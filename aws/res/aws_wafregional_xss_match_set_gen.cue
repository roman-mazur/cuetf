package res

import "list"

#aws_wafregional_xss_match_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_xss_match_set")
	close({
		xss_match_tuple?: matchN(1, [#xss_match_tuple, [...#xss_match_tuple]])
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#xss_match_tuple: close({
		field_to_match!: matchN(1, [_#defs."/$defs/xss_match_tuple/$defs/field_to_match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/xss_match_tuple/$defs/field_to_match"]])
		text_transformation!: string
	})

	_#defs: "/$defs/xss_match_tuple/$defs/field_to_match": close({
		data?: string
		type!: string
	})
}
