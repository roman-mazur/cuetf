package res

#azurerm_healthcare_medtech_service_fhir_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_healthcare_medtech_service_fhir_destination")
	close({
		timeouts?:                             #timeouts
		destination_fhir_mapping_json!:        string
		destination_fhir_service_id!:          string
		destination_identity_resolution_type!: string
		id?:                                   string
		location!:                             string
		medtech_service_id!:                   string
		name!:                                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
