package data

#scaleway_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_config")
	close({
		// Access Key used
		access_key?: string

		// Where the access key definition comes from (Environment,
		// configuration file, variable, ...)
		access_key_source?: string
		id?:                string

		// Organization ID used
		organization_id?: string

		// Where the organization id definition comes from (Environment,
		// configuration file, variable, ...)
		organization_id_source?: string

		// Project ID used
		project_id?: string

		// Where the project id definition comes from (Environment,
		// configuration file, variable, ...)
		project_id_source?: string

		// Region used
		region?: string

		// Where the region definition comes from (Environment,
		// configuration file, variable, ...)
		region_source?: string

		// Secret Key used
		secret_key?: string

		// Where the secret key definition comes from (Environment,
		// configuration file, variable, ...)
		secret_key_source?: string

		// Zone used
		zone?: string

		// Where the zone definition comes from (Environment,
		// configuration file, variable, ...)
		zone_source?: string
	})
}
