package res

import "list"

#azurerm_api_management_api_operation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_api_management_api_operation")
	close({
		api_management_name!: string
		api_name!:            string
		description?:         string
		display_name!:        string
		id?:                  string
		request?: matchN(1, [#request, list.MaxItems(1) & [...#request]])
		method!: string
		response?: matchN(1, [#response, [...#response]])
		operation_id!:        string
		resource_group_name!: string
		template_parameter?: matchN(1, [#template_parameter, [...#template_parameter]])
		timeouts?:     #timeouts
		url_template!: string
	})

	#request: close({
		header?: matchN(1, [_#defs."/$defs/request/$defs/header", [..._#defs."/$defs/request/$defs/header"]])
		query_parameter?: matchN(1, [_#defs."/$defs/request/$defs/query_parameter", [..._#defs."/$defs/request/$defs/query_parameter"]])
		representation?: matchN(1, [_#defs."/$defs/request/$defs/representation", [..._#defs."/$defs/request/$defs/representation"]])
		description?: string
	})

	#response: close({
		header?: matchN(1, [_#defs."/$defs/response/$defs/header", [..._#defs."/$defs/response/$defs/header"]])
		representation?: matchN(1, [_#defs."/$defs/response/$defs/representation", [..._#defs."/$defs/response/$defs/representation"]])
		description?: string
		status_code!: number
	})

	#template_parameter: close({
		example?: matchN(1, [_#defs."/$defs/template_parameter/$defs/example", [..._#defs."/$defs/template_parameter/$defs/example"]])
		default_value?: string
		description?:   string
		name!:          string
		required!:      bool
		schema_id?:     string
		type!:          string
		type_name?:     string
		values?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/request/$defs/header": close({
		example?: matchN(1, [_#defs."/$defs/request/$defs/header/$defs/example", [..._#defs."/$defs/request/$defs/header/$defs/example"]])
		default_value?: string
		description?:   string
		name!:          string
		required!:      bool
		schema_id?:     string
		type!:          string
		type_name?:     string
		values?: [...string]
	})

	_#defs: "/$defs/request/$defs/header/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/request/$defs/query_parameter": close({
		example?: matchN(1, [_#defs."/$defs/request/$defs/query_parameter/$defs/example", [..._#defs."/$defs/request/$defs/query_parameter/$defs/example"]])
		default_value?: string
		description?:   string
		name!:          string
		required!:      bool
		schema_id?:     string
		type!:          string
		type_name?:     string
		values?: [...string]
	})

	_#defs: "/$defs/request/$defs/query_parameter/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/request/$defs/representation": close({
		example?: matchN(1, [_#defs."/$defs/request/$defs/representation/$defs/example", [..._#defs."/$defs/request/$defs/representation/$defs/example"]])
		form_parameter?: matchN(1, [_#defs."/$defs/request/$defs/representation/$defs/form_parameter", [..._#defs."/$defs/request/$defs/representation/$defs/form_parameter"]])
		content_type!: string
		schema_id?:    string
		type_name?:    string
	})

	_#defs: "/$defs/request/$defs/representation/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/request/$defs/representation/$defs/form_parameter": close({
		example?: matchN(1, [_#defs."/$defs/request/$defs/representation/$defs/form_parameter/$defs/example", [..._#defs."/$defs/request/$defs/representation/$defs/form_parameter/$defs/example"]])
		default_value?: string
		description?:   string
		name!:          string
		required!:      bool
		schema_id?:     string
		type!:          string
		type_name?:     string
		values?: [...string]
	})

	_#defs: "/$defs/request/$defs/representation/$defs/form_parameter/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/response/$defs/header": close({
		example?: matchN(1, [_#defs."/$defs/response/$defs/header/$defs/example", [..._#defs."/$defs/response/$defs/header/$defs/example"]])
		default_value?: string
		description?:   string
		name!:          string
		required!:      bool
		schema_id?:     string
		type!:          string
		type_name?:     string
		values?: [...string]
	})

	_#defs: "/$defs/response/$defs/header/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/response/$defs/representation": close({
		example?: matchN(1, [_#defs."/$defs/response/$defs/representation/$defs/example", [..._#defs."/$defs/response/$defs/representation/$defs/example"]])
		form_parameter?: matchN(1, [_#defs."/$defs/response/$defs/representation/$defs/form_parameter", [..._#defs."/$defs/response/$defs/representation/$defs/form_parameter"]])
		content_type!: string
		schema_id?:    string
		type_name?:    string
	})

	_#defs: "/$defs/response/$defs/representation/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/response/$defs/representation/$defs/form_parameter": close({
		example?: matchN(1, [_#defs."/$defs/response/$defs/representation/$defs/form_parameter/$defs/example", [..._#defs."/$defs/response/$defs/representation/$defs/form_parameter/$defs/example"]])
		default_value?: string
		description?:   string
		name!:          string
		required!:      bool
		schema_id?:     string
		type!:          string
		type_name?:     string
		values?: [...string]
	})

	_#defs: "/$defs/response/$defs/representation/$defs/form_parameter/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})

	_#defs: "/$defs/template_parameter/$defs/example": close({
		description?:    string
		external_value?: string
		name!:           string
		summary?:        string
		value?:          string
	})
}
