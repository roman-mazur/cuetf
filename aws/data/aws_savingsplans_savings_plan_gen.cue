package data

#aws_savingsplans_savings_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_savingsplans_savings_plan")
	close({
		// The hourly commitment, in USD.
		commitment?: string

		// The currency of the Savings Plan.
		currency?: string

		// The description.
		description?: string

		// The EC2 instance family for the Savings Plan.
		ec2_instance_family?: string

		// The end time of the Savings Plan.
		end?: string

		// The ID of the offering.
		offering_id?: string

		// The payment option for the Savings Plan.
		payment_option?: string

		// The product types.
		product_types?: [...string]

		// The time at which to purchase the Savings Plan, in UTC format
		// (YYYY-MM-DDTHH:MM:SSZ).
		purchase_time?: string

		// The recurring payment amount.
		recurring_payment_amount?: string

		// The AWS Region.
		region?: string

		// The recurring payment amount.
		returnable_until?: string
		savings_plan_arn?: string

		// The ID of the Savings Plan.
		savings_plan_id!: string

		// The unique ID of a Savings Plan offering.
		savings_plan_offering_id?: string

		// The type of Savings Plan.
		savings_plan_type?: string

		// The start time of the Savings Plan.
		start?: string

		// The current state of the Savings Plan.
		state?: string
		tags?: [string]: string

		// The duration of the term, in seconds.
		term_duration_in_seconds?: number

		// The up-front payment amount.
		upfront_payment_amount?: string
	})
}
