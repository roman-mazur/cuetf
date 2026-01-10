package res

import "list"

#github_actions_hosted_runner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_hosted_runner")
	close({
		// The hosted runner ID.
		id?: string

		// Whether this runner should be used to generate custom images.
		// Cannot be changed after creation.
		image_gen?: bool

		// The version of the runner image to deploy. This is relevant
		// only for runners using custom images.
		image_version?: string

		// Timestamp when the runner was last active.
		last_active_on?: string

		// Detailed machine size specifications.
		machine_size_details?: [...close({
			cpu_cores?:  number
			id?:         string
			memory_gb?:  number
			storage_gb?: number
		})]

		// Maximum number of runners to scale up to.
		maximum_runners?: number

		// Name of the hosted runner. Must be between 1 and 64 characters
		// and may only contain upper and lowercase letters a-z, numbers
		// 0-9, '.', '-', and '_'.
		name!: string

		// Platform of the runner.
		platform?: string
		image!: matchN(1, [#image, list.MaxItems(1) & [_, ...] & [...#image]])
		timeouts?: #timeouts

		// Whether to enable static public IP.
		public_ip_enabled?: bool

		// List of public IP ranges assigned to this runner.
		public_ips?: [...close({
			enabled?: bool
			length?:  number
			prefix?:  string
		})]

		// The runner group ID.
		runner_group_id!: number

		// Machine size (e.g., '4-core', '8-core'). Can be updated to
		// scale the runner.
		size!: string

		// Current status of the runner.
		status?: string
	})

	#image: close({
		// The image ID.
		id!: string

		// The size of the image in GB.
		size_gb?: number

		// The image source (github, partner, or custom).
		source?: string
	})

	#timeouts: close({
		delete?: string
	})
}
