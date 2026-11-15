package res

import "list"

google_data_lineage_open_lineage_job: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_lineage_open_lineage_job")
	close({
		input?: matchN(1, [#input, [...#input]])
		output?: matchN(1, [#output, [...#output]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the OpenLineage job. Changes to description do not trigger updates.
		description?: string
		id?:          string

		// Name of the OpenLineage job.
		name!: string

		// Namespace of the OpenLineage job.
		namespace!: string

		// Data Lineage process identifier created for this lineage job.
		process?: string

		// Latest Data Lineage run identifier for this lineage job.
		run?: string
	})

	#input: close({
		catalog?: matchN(1, [_#defs."/$defs/input/$defs/catalog", list.MaxItems(1) & [..._#defs."/$defs/input/$defs/catalog"]])
		symlink?: matchN(1, [_#defs."/$defs/input/$defs/symlink", [..._#defs."/$defs/input/$defs/symlink"]])

		// Name of the dataset.
		name!: string

		// Namespace of the dataset.
		namespace!: string
	})

	#output: close({
		catalog?: matchN(1, [_#defs."/$defs/output/$defs/catalog", list.MaxItems(1) & [..._#defs."/$defs/output/$defs/catalog"]])
		column_lineage?: matchN(1, [_#defs."/$defs/output/$defs/column_lineage", list.MaxItems(1) & [..._#defs."/$defs/output/$defs/column_lineage"]])
		symlink?: matchN(1, [_#defs."/$defs/output/$defs/symlink", [..._#defs."/$defs/output/$defs/symlink"]])

		// Name of the dataset.
		name!: string

		// Namespace of the dataset.
		namespace!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/input/$defs/catalog": close({
		// Catalog framework.
		framework!: string

		// Catalog entity name.
		name!: string

		// Catalog entity type.
		type!: string
	})

	_#defs: "/$defs/input/$defs/symlink": close({
		// Name of the symlink target.
		name!: string

		// Namespace of the symlink target.
		namespace!: string

		// Type of the symlink target.
		type!: string
	})

	_#defs: "/$defs/output/$defs/catalog": close({
		// Catalog framework.
		framework!: string

		// Catalog entity name.
		name!: string

		// Catalog entity type.
		type!: string
	})

	_#defs: "/$defs/output/$defs/column_lineage": close({
		dataset_input?: matchN(1, [_#defs."/$defs/output/$defs/column_lineage/$defs/dataset_input", [..._#defs."/$defs/output/$defs/column_lineage/$defs/dataset_input"]])
		field!: matchN(1, [_#defs."/$defs/output/$defs/column_lineage/$defs/field", [_, ...] & [..._#defs."/$defs/output/$defs/column_lineage/$defs/field"]])
	})

	_#defs: "/$defs/output/$defs/column_lineage/$defs/dataset_input": close({
		transformation?: matchN(1, [_#defs."/$defs/output/$defs/column_lineage/$defs/dataset_input/$defs/transformation", [..._#defs."/$defs/output/$defs/column_lineage/$defs/dataset_input/$defs/transformation"]])

		// Source field name.
		field!: string

		// Name of the source dataset.
		name!: string

		// Namespace of the source dataset.
		namespace!: string
	})

	_#defs: "/$defs/output/$defs/column_lineage/$defs/dataset_input/$defs/transformation": close({
		// Transformation subtype.
		subtype?: string

		// Transformation type.
		type!: string
	})

	_#defs: "/$defs/output/$defs/column_lineage/$defs/field": close({
		input!: matchN(1, [_#defs."/$defs/output/$defs/column_lineage/$defs/field/$defs/input", [_, ...] & [..._#defs."/$defs/output/$defs/column_lineage/$defs/field/$defs/input"]])

		// Output field name.
		name!: string
	})

	_#defs: "/$defs/output/$defs/column_lineage/$defs/field/$defs/input": close({
		transformation?: matchN(1, [_#defs."/$defs/output/$defs/column_lineage/$defs/field/$defs/input/$defs/transformation", [..._#defs."/$defs/output/$defs/column_lineage/$defs/field/$defs/input/$defs/transformation"]])

		// Source field name.
		field!: string

		// Name of the source dataset.
		name!: string

		// Namespace of the source dataset.
		namespace!: string
	})

	_#defs: "/$defs/output/$defs/column_lineage/$defs/field/$defs/input/$defs/transformation": close({
		// Transformation subtype.
		subtype?: string

		// Transformation type.
		type!: string
	})

	_#defs: "/$defs/output/$defs/symlink": close({
		// Name of the symlink target.
		name!: string

		// Namespace of the symlink target.
		namespace!: string

		// Type of the symlink target.
		type!: string
	})
}
