package res

import "list"

google_document_ai_schema_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_document_ai_schema_version")
	close({
		schema!: matchN(1, [#schema, list.MaxItems(1) & [_, ...] & [...#schema]])
		timeouts?: #timeouts

		// The time when the SchemaVersion was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The user-defined name of the SchemaVersion.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// The Google Cloud labels for the SchemaVersion.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location of the resource.
		location!: string

		// The resource name of the SchemaVersion.
		name?: string

		// The schema id that this schema version belongs to.
		schema_id!: string
		project?:   string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#schema: close({
		entity_types?: matchN(1, [_#defs."/$defs/schema/$defs/entity_types", [..._#defs."/$defs/schema/$defs/entity_types"]])
		metadata?: matchN(1, [_#defs."/$defs/schema/$defs/metadata", list.MaxItems(1) & [..._#defs."/$defs/schema/$defs/metadata"]])

		// Description of the schema.
		description?: string

		// Display name to show users.
		display_name?: string

		// Document-level prompt provided by the user. This custom text is injected into
		// the AI model's prompt to provide extra, document-wide guidance for
		// processing.
		document_prompt?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/schema/$defs/entity_types": close({
		enum_values?: matchN(1, [_#defs."/$defs/schema/$defs/entity_types/$defs/enum_values", list.MaxItems(1) & [..._#defs."/$defs/schema/$defs/entity_types/$defs/enum_values"]])
		properties?: matchN(1, [_#defs."/$defs/schema/$defs/entity_types/$defs/properties", [..._#defs."/$defs/schema/$defs/entity_types/$defs/properties"]])

		// The entity type that this type is derived from. For now, one and only one should be set.
		base_types?: [...string]

		// User defined name for the type.
		display_name?: string

		// Name of the type. It must be unique within the schema file and cannot be a "Common Type".
		name!: string
	})

	_#defs: "/$defs/schema/$defs/entity_types/$defs/enum_values": close({
		// The individual values that this enum values type can include.
		values?: [...string]
	})

	_#defs: "/$defs/schema/$defs/entity_types/$defs/properties": close({
		// User defined name for the property.
		display_name?: string

		// Specifies how the entity's value is obtained. Possible values: ["EXTRACT",
		// "DERIVE", "RELAXED_EXTRACT"]
		method?: string

		// The name of the property. Follows the same guidelines as the EntityType name.
		name!: string

		// Occurrence type limits the number of instances an entity type appears in the
		// document. Possible values: ["OPTIONAL_ONCE", "OPTIONAL_MULTIPLE",
		// "REQUIRED_ONCE", "REQUIRED_MULTIPLE"]
		occurrence_type?: string

		// A reference to the value type of the property. This type is subject to the
		// same conventions as the 'Entity.base_types' field.
		value_type!: string
	})

	_#defs: "/$defs/schema/$defs/metadata": close({
		// If true, on a given page, there can be multiple 'document' annotations covering it.
		document_allow_multiple_labels?: bool

		// If true, a 'document' entity type can be applied to subdocument (splitting).
		// Otherwise, it can only be applied to the entire document (classification).
		document_splitter?: bool

		// If set, all the nested entities must be prefixed with the parents.
		prefixed_naming_on_properties?: bool

		// If set, this will skip the naming format validation in the schema. So the
		// string values in 'DocumentSchema.EntityType.name' and
		// 'DocumentSchema.EntityType.Property.name' will not be checked.
		skip_naming_validation?: bool
	})
}
