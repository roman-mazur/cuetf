package res

#aws_sagemaker_mlflow_tracking_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_mlflow_tracking_server")
	close({
		arn?:                          string
		artifact_store_uri!:           string
		automatic_model_registration?: bool
		id?:                           string
		mlflow_version?:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		tracking_server_name!:            string
		tracking_server_size?:            string
		tracking_server_url?:             string
		weekly_maintenance_window_start?: string
	})
}
