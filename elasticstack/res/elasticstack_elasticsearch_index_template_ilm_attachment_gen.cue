package res

#elasticstack_elasticsearch_index_template_ilm_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_index_template_ilm_attachment")
	close({
		// Internal identifier of the resource.
		id?: string

		// Name of the index template to attach the ILM policy to. For
		// Fleet-managed templates, this is typically the template name
		// (e.g., 'logs-system.syslog').
		index_template!: string

		// Name of the ILM policy to attach to the index template.
		lifecycle_name!: string
	})
}
