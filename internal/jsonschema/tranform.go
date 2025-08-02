package jsonschema

import (
	"encoding/json"
	"fmt"
	"io"
)

func ParseTerraform(in io.Reader) (*Root, error) {
	var res Root
	err := json.NewDecoder(in).Decode(&res)
	return &res, err
}

func Convert(t Block) Node {
	res := Node{
		objectNode: &objectNode{
			Type:       "object",
			Properties: make(map[string]Node, len(t.Block.Attributes)+len(t.Block.BlockTypes)),
		},
	}
	for name, value := range t.Attributes {
		if !value.Deprecated {
			res.objectNode.Properties[name] = convertAttribute(value.Type)
		}
		if value.Required {
			res.objectNode.Required = append(res.objectNode.Required, name)
		}
	}
	for name, value := range t.BlockTypes {
		res.objectNode.Properties[name] = convertBlock(value)
	}
	return res
}

func convertAttribute(t terraAttributeType) Node {
	if t.IsPrimitive() {
		res := Node{objectNode: &objectNode{Type: t.Name}}
		if res.objectNode.Type == "bool" {
			res.objectNode.Type = "boolean"
		}
		return res
	}
	if t.IsContainer() {
		switch t.Name {
		case "list":
			return Node{
				arrayNode: &arrayNode{
					Type:  "array",
					Items: convertAttribute(*t.Child),
				},
			}
		case "set":
			return Node{
				arrayNode: &arrayNode{
					Type:        "array",
					Items:       convertAttribute(*t.Child),
					UniqueItems: true,
				},
			}
		case "map":
			return Node{
				mapNode: &mapNode{
					Type:                 "object",
					AdditionalProperties: convertAttribute(*t.Child),
				},
			}

		default:
			panic(fmt.Errorf("unknown type %s", t.Name))
		}
	}

	res := Node{
		objectNode: &objectNode{
			Type:       "object",
			Properties: make(map[string]Node, len(t.Fields)),
		},
	}
	for name, value := range t.Fields {
		res.objectNode.Properties[name] = convertAttribute(value)
	}
	return res
}

func convertBlock(d blockDescription) Node {
	res := Node{objectNode: &objectNode{Type: "object"}}
	for key, value := range d.Block.
	return res
}

type Node struct {
	*objectNode `json:",inline,omitempty"`
	*mapNode    `json:",inline,omitempty"`
	*arrayNode  `json:",inline,omitempty"`
	*oneOfNode  `json:",inline,omitempty"`

	Defs map[string]objectNode `json:"$defs,omitempty"`
}

type objectNode struct {
	Type                 string          `json:"type"`
	AdditionalProperties bool            `json:"additionalProperties"`
	Properties           map[string]Node `json:"properties"`
	Required             []string        `json:"required,omitempty"`
}

type arrayNode struct {
	Type        string `json:"type"`
	Items       Node   `json:"items"`
	UniqueItems bool   `json:"uniqueItems,omitempty"`
}

type mapNode struct {
	Type                 string `json:"type"`
	AdditionalProperties Node   `json:"additionalProperties"`
}

type oneOfNode struct {
	OneOf []any `json:"oneOf"`
}

type Root struct {
	ProviderSchemas map[string]ProviderSchema `json:"provider_schemas"`
}

type ProviderSchema struct {
	Provider          TerraType            `json:"provider"`
	ResourceSchemas   map[string]TerraType `json:"resource_schemas"`
	DataSourceSchemas map[string]TerraType `json:"data_source_schemas"`
}

type TerraType struct {
	Version uint  `json:"version"`
	Block   Block `json:"block"`
}

type documented struct {
	Description     string `json:"description,omitempty"`
	DescriptionKind string `json:"description_kind,omitempty"`
}

type Block struct {
	documented `json:",inline"`
	Deprecated bool                            `json:"deprecated,omitempty"`
	Attributes map[string]attributeDescription `json:"attributes,omitempty"`
	BlockTypes map[string]blockDescription     `json:"block_types,omitempty"`
}

type attributeDescription struct {
	documented `json:",inline"`
	Optional   bool `json:"optional,omitempty"`
	Required   bool `json:"required,omitempty"`
	Computed   bool `json:"computed,omitempty"`
	Sensitive  bool `json:"sensitive,omitempty"`
	Deprecated bool `json:"deprecated,omitempty"`

	Type terraAttributeType `json:"type,omitempty"`
}

type blockDescription struct {
	documented  `json:",inline"`
	NestingMode string `json:"nesting_mode,omitempty"`
	MaxItems    uint   `json:"max_items,omitempty"`
	MinItems uint  `json:"min_items,omitempty"`
	Block    Block `json:"block,omitempty"`
}

type terraAttributeType struct {
	Name   string
	Child  *terraAttributeType
	Fields map[string]terraAttributeType
}

func (tat *terraAttributeType) IsPrimitive() bool {
	switch tat.Name {
	case "string", "bool", "number":
		return true
	default:
		return false
	}
}

func (tat *terraAttributeType) IsContainer() bool {
	return tat.Child != nil
}

func (tat *terraAttributeType) UnmarshalJSON(data []byte) error {
	var primitive string
	if err := json.Unmarshal(data, &primitive); err == nil {
		tat.Name = primitive
		return nil
	}

	var complexType []any
	if err := json.Unmarshal(data, &complexType); err != nil {
		return err
	}
	res, err := reconstruct(complexType)
	if err != nil {
		return err
	}
	*tat = *res
	return nil
}

func reconstruct(x any) (*terraAttributeType, error) {
	if primName, ok := x.(string); ok {
		return &terraAttributeType{Name: primName}, nil
	}
	if list, ok := x.([]string); ok {
		in := make([]any, len(list))
		for i := range list {
			in[i] = list[i]
		}
		return reconstruct(list)
	}

	terraSlice, ok := x.([]any)
	if !ok {
		return nil, fmt.Errorf("unexpected type %T", x)
	}

	if len(terraSlice) != 2 {
		return nil, fmt.Errorf("expected two Terraform attribute type, got %d", len(terraSlice))
	}
	name, ok := terraSlice[0].(string)
	if !ok {
		return nil, fmt.Errorf("expected Terraform type name, got %T", terraSlice[0])
	}

	var res terraAttributeType
	res.Name = name

	if name == "object" {
		fields, ok := terraSlice[1].(map[string]any)
		if !ok {
			return nil, fmt.Errorf("unexpected object payload %T", terraSlice[1])
		}
		res.Fields = make(map[string]terraAttributeType, len(fields))
		for name, field := range fields {
			v, err := reconstruct(field)
			if err != nil {
				return nil, fmt.Errorf("field %s: %d", name, err)
			}
			res.Fields[name] = *v
		}
		return &res, nil
	}

	var err error
	res.Child, err = reconstruct(terraSlice[1])
	return &res, err
}
