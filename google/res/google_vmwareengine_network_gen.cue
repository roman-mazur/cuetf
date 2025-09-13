package res

#google_vmwareengine_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_vmwareengine_network")
	close({
		// User-provided description for this VMware Engine network.
		description?: string

		// The location where the VMwareEngineNetwork should reside.
		location!: string
		id?:       string

		// The ID of the VMwareEngineNetwork.
		name!: string

		// State of the VMware Engine network.
		state?:   string
		project?: string

		// VMware Engine network type. Possible values: ["LEGACY",
		// "STANDARD"]
		type!: string

		// System-generated unique identifier for the resource.
		uid?:      string
		timeouts?: #timeouts

		// VMware Engine service VPC networks that provide connectivity
		// from a private cloud to customer projects,
		// the internet, and other Google Cloud services.
		vpc_networks?: [...close({
			network?: string
			type?:    string
		})]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
