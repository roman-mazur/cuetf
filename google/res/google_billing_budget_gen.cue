package res

import "list"

#google_billing_budget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_billing_budget")
	close({
		// ID of the billing account to set a budget on.
		billing_account!: string

		// User data for display name in UI. Must be <= 60 chars.
		display_name?: string

		// Resource name of the budget. The resource name
		// implies the scope of a budget. Values are of the form
		// billingAccounts/{billingAccountId}/budgets/{budgetId}.
		name?: string
		id?:   string
		all_updates_rule?: matchN(1, [#all_updates_rule, list.MaxItems(1) & [...#all_updates_rule]])
		amount!: matchN(1, [#amount, list.MaxItems(1) & [_, ...] & [...#amount]])
		budget_filter?: matchN(1, [#budget_filter, list.MaxItems(1) & [...#budget_filter]])

		// The ownership scope of the budget. The ownership scope and
		// users'
		// IAM permissions determine who has full access to the budget's
		// data. Possible values: ["OWNERSHIP_SCOPE_UNSPECIFIED",
		// "ALL_USERS", "BILLING_ACCOUNT"]
		ownership_scope?: string
		threshold_rules?: matchN(1, [#threshold_rules, [...#threshold_rules]])
		timeouts?: #timeouts
	})

	#all_updates_rule: close({
		// Boolean. When set to true, disables default notifications sent
		// when a threshold is exceeded. Default recipients are
		// those with Billing Account Administrators and Billing
		// Account Users IAM roles for the target account.
		disable_default_iam_recipients?: bool

		// When set to true, and when the budget has a single project
		// configured,
		// notifications will be sent to project level recipients of that
		// project.
		// This field will be ignored if the budget has multiple or no
		// project configured.
		//
		// Currently, project level recipients are the users with Owner
		// role on a cloud project.
		enable_project_level_recipients?: bool

		// The full resource name of a monitoring notification
		// channel in the form
		// projects/{project_id}/notificationChannels/{channel_id}.
		// A maximum of 5 channels are allowed.
		monitoring_notification_channels?: [...string]

		// The name of the Cloud Pub/Sub topic where budget related
		// messages will be published, in the form
		// projects/{project_id}/topics/{topic_id}. Updates are sent
		// at regular intervals to the topic.
		pubsub_topic?: string

		// The schema version of the notification. Only "1.0" is
		// accepted. It represents the JSON schema as defined in
		// https://cloud.google.com/billing/docs/how-to/budgets#notification_format.
		schema_version?: string
	})

	#amount: close({
		specified_amount?: matchN(1, [_#defs."/$defs/amount/$defs/specified_amount", list.MaxItems(1) & [..._#defs."/$defs/amount/$defs/specified_amount"]])

		// Configures a budget amount that is automatically set to 100% of
		// last period's spend.
		// Boolean. Set value to true to use. Do not set to false, instead
		// use the 'specified_amount' block.
		last_period_amount?: bool
	})

	#budget_filter: close({
		// A CalendarPeriod represents the abstract concept of a recurring
		// time period that has a
		// canonical start. Grammatically, "the start of the current
		// CalendarPeriod".
		// All calendar times begin at 12 AM US and Canadian Pacific Time
		// (UTC-8).
		//
		// Exactly one of 'calendar_period', 'custom_period' must be
		// provided. Possible values: ["MONTH", "QUARTER", "YEAR",
		// "CALENDAR_PERIOD_UNSPECIFIED"]
		calendar_period?: string

		// Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,
		// this is a list of credit types to be subtracted from gross cost
		// to determine the spend for threshold calculations. See a list
		// of acceptable credit type values.
		// If creditTypesTreatment is not INCLUDE_SPECIFIED_CREDITS, this
		// field must be empty.
		credit_types?: [...string]

		// Specifies how credits should be treated when determining spend
		// for threshold calculations. Default value:
		// "INCLUDE_ALL_CREDITS" Possible values: ["INCLUDE_ALL_CREDITS",
		// "EXCLUDE_ALL_CREDITS", "INCLUDE_SPECIFIED_CREDITS"]
		credit_types_treatment?: string

		// A single label and value pair specifying that usage from only
		// this set of labeled resources should be included in the budget.
		labels?: [string]: string

		// A set of projects of the form projects/{project_number},
		// specifying that usage from only this set of projects should be
		// included in the budget. If omitted, the report will include
		// all usage for the billing account, regardless of which project
		// the usage occurred on.
		projects?: [...string]

		// A set of folder and organization names of the form
		// folders/{folderId} or organizations/{organizationId},
		// specifying that usage from only this set of folders and
		// organizations should be included in the budget.
		// If omitted, the budget includes all usage that the billing
		// account pays for. If the folder or organization
		// contains projects that are paid for by a different Cloud
		// Billing account, the budget doesn't apply to those projects.
		resource_ancestors?: [...string]
		custom_period?: matchN(1, [_#defs."/$defs/budget_filter/$defs/custom_period", list.MaxItems(1) & [..._#defs."/$defs/budget_filter/$defs/custom_period"]])

		// A set of services of the form services/{service_id},
		// specifying that usage from only this set of services should be
		// included in the budget. If omitted, the report will include
		// usage for all the services. The service names are available
		// through the Catalog API:
		// https://cloud.google.com/billing/v1/how-tos/catalog-api.
		services?: [...string]

		// A set of subaccounts of the form billingAccounts/{account_id},
		// specifying that usage from only this set of subaccounts should
		// be included in the budget. If a subaccount is set to the name
		// of
		// the parent account, usage from the parent account will be
		// included.
		// If the field is omitted, the report will include usage from the
		// parent
		// account and all subaccounts, if they exist.
		subaccounts?: [...string]
	})

	#threshold_rules: close({
		// The type of basis used to determine if spend has passed
		// the threshold. Default value: "CURRENT_SPEND" Possible values:
		// ["CURRENT_SPEND", "FORECASTED_SPEND"]
		spend_basis?: string

		// Send an alert when this threshold is exceeded. This is a
		// 1.0-based percentage, so 0.5 = 50%. Must be >= 0.
		threshold_percent!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/amount/$defs/specified_amount": close({
		// The 3-letter currency code defined in ISO 4217.
		currency_code?: string

		// Number of nano (10^-9) units of the amount.
		// The value must be between -999,999,999 and +999,999,999
		// inclusive. If units is positive, nanos must be positive or
		// zero. If units is zero, nanos can be positive, zero, or
		// negative. If units is negative, nanos must be negative or
		// zero. For example $-1.75 is represented as units=-1 and
		// nanos=-750,000,000.
		nanos?: number

		// The whole units of the amount. For example if currencyCode
		// is "USD", then 1 unit is one US dollar.
		units?: string
	})

	_#defs: "/$defs/budget_filter/$defs/custom_period": close({
		end_date?: matchN(1, [_#defs."/$defs/budget_filter/$defs/custom_period/$defs/end_date", list.MaxItems(1) & [..._#defs."/$defs/budget_filter/$defs/custom_period/$defs/end_date"]])
		start_date!: matchN(1, [_#defs."/$defs/budget_filter/$defs/custom_period/$defs/start_date", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/budget_filter/$defs/custom_period/$defs/start_date"]])
	})

	_#defs: "/$defs/budget_filter/$defs/custom_period/$defs/end_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month.
		day!: number

		// Month of a year. Must be from 1 to 12.
		month!: number

		// Year of the date. Must be from 1 to 9999.
		year!: number
	})

	_#defs: "/$defs/budget_filter/$defs/custom_period/$defs/start_date": close({
		// Day of a month. Must be from 1 to 31 and valid for the year and
		// month.
		day!: number

		// Month of a year. Must be from 1 to 12.
		month!: number

		// Year of the date. Must be from 1 to 9999.
		year!: number
	})
}
