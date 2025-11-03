package data

#aws_ecrpublic_images: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecrpublic_images")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// AWS account ID associated with the public registry that
		// contains the repository. If not specified, the default public
		// registry is assumed.
		registry_id?: string
		images?: [...close({
			artifact_media_type?:       string
			image_digest?:              string
			image_manifest_media_type?: string
			image_pushed_at?:           string
			image_size_in_bytes?:       number
			image_tags?: [...string]
			registry_id?:     string
			repository_name?: string
		})]

		// Name of the public repository.
		repository_name!: string
		image_ids?: matchN(1, [#image_ids, [...#image_ids]])
	})

	#image_ids: close({
		// Image digest.
		image_digest?: string

		// Image tag.
		image_tag?: string
	})
}
