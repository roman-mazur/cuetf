package data

#aws_eks_addon_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_addon_version")
	close({
		addon_name!:         string
		id?:                 string
		kubernetes_version!: string
		most_recent?:        bool
		region?:             string
		version?:            string
	})
}
