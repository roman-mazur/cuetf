package data

#aws_eks_addon_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_addon_version")
	addon_name!:         string
	id?:                 string
	kubernetes_version!: string
	most_recent?:        bool
	version?:            string
}
