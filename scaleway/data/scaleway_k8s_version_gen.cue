package data

#scaleway_k8s_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_k8s_version")
	close({
		// The list of supported Container Network Interface (CNI) plugins
		// for this version
		available_cnis?: [...string]

		// The list of supported container runtimes for this version
		available_container_runtimes?: [...string]

		// The list of supported feature gates for this version
		available_feature_gates?: [...string]
		id?: string

		// The name of the version in the form x.y (ignoring patch
		// version)
		major_minor_only?: string

		// Name of the Kubernetes version in the form x.y.z
		name!: string

		// The region you want to attach the resource to
		region?: string
	})
}
