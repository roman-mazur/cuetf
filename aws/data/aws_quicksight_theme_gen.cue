package data

#aws_quicksight_theme: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_quicksight_theme")
	close({
		arn?:            string
		aws_account_id?: string
		base_theme_id?:  string
		configuration?: [...close({
			data_color_palette?: [...close({
				colors?: [...string]
				empty_fill_color?: string
				min_max_gradient?: [...string]
			})]
			sheet?: [...close({
				tile?: [...close({
					border?: [...close({
						show?: bool
					})]
				})]
				tile_layout?: [...close({
					gutter?: [...close({
						show?: bool
					})]
					margin?: [...close({
						show?: bool
					})]
				})]
			})]
			typography?: [...close({
				font_families?: [...close({
					font_family?: string
				})]
			})]
			ui_color_palette?: [...close({
				accent?:               string
				accent_foreground?:    string
				danger?:               string
				danger_foreground?:    string
				dimension?:            string
				dimension_foreground?: string
				measure?:              string
				measure_foreground?:   string
				primary_background?:   string
				primary_foreground?:   string
				secondary_background?: string
				secondary_foreground?: string
				success?:              string
				success_foreground?:   string
				warning?:              string
				warning_foreground?:   string
			})]
		})]
		created_time?:      string
		id?:                string
		last_updated_time?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name?:   string
		permissions?: [...close({
			actions?: [...string]
			principal?: string
		})]
		status?: string
		tags?: [string]: string
		theme_id!:            string
		version_description?: string
		version_number?:      number
	})
}
