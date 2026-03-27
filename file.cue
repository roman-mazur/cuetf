package cuetf

// #ProviderSchemaFile defines the structure of a file obtained via running
//		terraform providers schema -json
#ProviderSchemaFile: {
	provider_schemas: [string]: #ProviderSchema
}

// #TfJson defines the structure of a .tf.json file.
#TfJson: {
	terraform?: {
		required_providers?: [string]: _
		...
	}
	provider?: [string]: _
	resource?: [string]: _
	data?: [string]: _
}
