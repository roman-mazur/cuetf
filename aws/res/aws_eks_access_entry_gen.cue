package res

#aws_eks_access_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_access_entry")
	close({
		access_entry_arn?: string
		cluster_name!:     string
		created_at?:       string
		id?:               string
		kubernetes_groups?: [...string]
		modified_at?:   string
		principal_arn!: string
		region?:        string
		timeouts?:      #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:      string
		user_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
