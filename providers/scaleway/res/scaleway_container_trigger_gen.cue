package res

import "list"

#scaleway_container_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_container_trigger")
	close({
		nats?: matchN(1, [#nats, list.MaxItems(1) & [...#nats]])
		sqs?: matchN(1, [#sqs, list.MaxItems(1) & [...#sqs]])
		timeouts?: #timeouts

		// The ID of the container to create a trigger for
		container_id!: string

		// The trigger description
		description?: string
		id?:          string

		// The trigger name
		name?: string

		// The region you want to attach the resource to
		region?: string
	})

	#nats: close({
		// ID of the mnq nats account
		account_id?: string

		// Project ID of the project where the mnq sqs exists, defaults to
		// provider project_id
		project_id?: string

		// Region where the mnq sqs exists, defaults to function's region
		region?: string

		// Subject to listen to
		subject!: string
	})

	#sqs: close({
		// Project ID of the project where the mnq sqs exists, defaults to
		// provider project_id
		project_id?: string

		// Name of the queue
		queue!: string

		// Region where the mnq sqs exists, defaults to function's region
		region?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
