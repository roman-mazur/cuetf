package res

#aws_quicksight_custom_permissions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_custom_permissions")
	close({
		arn?:                     string
		aws_account_id?:          string
		custom_permissions_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		capabilities?: matchN(1, [#capabilities, [...#capabilities]])
	})

	#capabilities: close({
		add_or_run_anomaly_detection_for_analyses?:  string
		create_and_update_dashboard_email_reports?:  string
		create_and_update_data_sources?:             string
		create_and_update_datasets?:                 string
		create_and_update_themes?:                   string
		create_and_update_threshold_alerts?:         string
		create_shared_folders?:                      string
		create_spice_dataset?:                       string
		export_to_csv?:                              string
		export_to_csv_in_scheduled_reports?:         string
		export_to_excel?:                            string
		export_to_excel_in_scheduled_reports?:       string
		export_to_pdf?:                              string
		export_to_pdf_in_scheduled_reports?:         string
		include_content_in_scheduled_reports_email?: string
		print_reports?:                              string
		rename_shared_folders?:                      string
		share_analyses?:                             string
		share_dashboards?:                           string
		share_data_sources?:                         string
		share_datasets?:                             string
		subscribe_dashboard_email_reports?:          string
		view_account_spice_capacity?:                string
	})
}
