package res

import "list"

#scaleway_iot_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iot_route")
	close({
		database?: matchN(1, [#database, list.MaxItems(1) & [...#database]])
		rest?: matchN(1, [#rest, list.MaxItems(1) & [...#rest]])
		s3?: matchN(1, [#s3, list.MaxItems(1) & [...#s3]])
		timeouts?: #timeouts

		// The date and time of the creation of the IoT Route
		created_at?: string

		// The ID of the route's hub
		hub_id!: string
		id?:     string

		// The name of the route
		name!: string

		// The region you want to attach the resource to
		region?: string

		// The Topic the route subscribes to (wildcards allowed)
		topic!: string
	})

	#database: close({
		// The database name
		dbname!: string

		// The database hostname
		host!: string

		// The database password
		password!: string

		// The database port
		port!: number

		// SQL query to be executed ($TOPIC and $PAYLOAD variables are
		// available, see documentation)
		query!: string

		// The database username
		username!: string
	})

	#rest: close({
		// The HTTP call extra headers
		headers!: [string]: string

		// The URI of the REST endpoint
		uri!: string

		// The HTTP Verb used to call REST URI
		verb!: string
	})

	#s3: close({
		// The name of the S3 route's destination bucket
		bucket_name!: string

		// The region of the S3 route's destination bucket
		bucket_region!: string

		// The string to prefix object names with
		object_prefix?: string

		// How the S3 route's objects will be created: one per topic or
		// one per message
		strategy!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
	})
}
