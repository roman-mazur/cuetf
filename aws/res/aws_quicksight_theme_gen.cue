package res

import "list"

#aws_quicksight_theme: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_quicksight_theme")
	close({
		arn?:               string
		aws_account_id?:    string
		base_theme_id!:     string
		created_time?:      string
		id?:                string
		last_updated_time?: string
		name!:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		configuration?: matchN(1, [#configuration, list.MaxItems(1) & [...#configuration]])
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		permissions?: matchN(1, [#permissions, list.MaxItems(64) & [...#permissions]])
		theme_id!:            string
		version_description?: string
		version_number?:      number
		timeouts?:            #timeouts
	})

	#configuration: close({
		data_color_palette?: matchN(1, [_#defs."/$defs/configuration/$defs/data_color_palette", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/data_color_palette"]])
		sheet?: matchN(1, [_#defs."/$defs/configuration/$defs/sheet", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/sheet"]])
		typography?: matchN(1, [_#defs."/$defs/configuration/$defs/typography", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/typography"]])
		ui_color_palette?: matchN(1, [_#defs."/$defs/configuration/$defs/ui_color_palette", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/ui_color_palette"]])
	})

	#permissions: close({
		actions!: [...string]
		principal!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/configuration/$defs/data_color_palette": close({
		colors?: [...string]
		empty_fill_color?: string
		min_max_gradient?: [...string]
	})

	_#defs: "/$defs/configuration/$defs/sheet": close({
		tile?: matchN(1, [_#defs."/$defs/configuration/$defs/sheet/$defs/tile", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/sheet/$defs/tile"]])
		tile_layout?: matchN(1, [_#defs."/$defs/configuration/$defs/sheet/$defs/tile_layout", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/sheet/$defs/tile_layout"]])
	})

	_#defs: "/$defs/configuration/$defs/sheet/$defs/tile": close({
		border?: matchN(1, [_#defs."/$defs/configuration/$defs/sheet/$defs/tile/$defs/border", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/sheet/$defs/tile/$defs/border"]])
	})

	_#defs: "/$defs/configuration/$defs/sheet/$defs/tile/$defs/border": close({
		show?: bool
	})

	_#defs: "/$defs/configuration/$defs/sheet/$defs/tile_layout": close({
		gutter?: matchN(1, [_#defs."/$defs/configuration/$defs/sheet/$defs/tile_layout/$defs/gutter", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/sheet/$defs/tile_layout/$defs/gutter"]])
		margin?: matchN(1, [_#defs."/$defs/configuration/$defs/sheet/$defs/tile_layout/$defs/margin", list.MaxItems(1) & [..._#defs."/$defs/configuration/$defs/sheet/$defs/tile_layout/$defs/margin"]])
	})

	_#defs: "/$defs/configuration/$defs/sheet/$defs/tile_layout/$defs/gutter": close({
		show?: bool
	})

	_#defs: "/$defs/configuration/$defs/sheet/$defs/tile_layout/$defs/margin": close({
		show?: bool
	})

	_#defs: "/$defs/configuration/$defs/typography": close({
		font_families?: matchN(1, [_#defs."/$defs/configuration/$defs/typography/$defs/font_families", list.MaxItems(5) & [..._#defs."/$defs/configuration/$defs/typography/$defs/font_families"]])
	})

	_#defs: "/$defs/configuration/$defs/typography/$defs/font_families": close({
		font_family?: string
	})

	_#defs: "/$defs/configuration/$defs/ui_color_palette": close({
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
	})
}
