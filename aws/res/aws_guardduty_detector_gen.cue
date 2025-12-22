package res

import "list"

#aws_guardduty_detector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_guardduty_detector")
	close({
		account_id?: string
		arn?:        string
		enable?:     bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		finding_publishing_frequency?: string
		id?:                           string
		tags?: [string]:     string
		tags_all?: [string]: string
		datasources?: matchN(1, [#datasources, list.MaxItems(1) & [...#datasources]])
	})

	#datasources: close({
		kubernetes?: matchN(1, [_#defs."/$defs/datasources/$defs/kubernetes", list.MaxItems(1) & [..._#defs."/$defs/datasources/$defs/kubernetes"]])
		malware_protection?: matchN(1, [_#defs."/$defs/datasources/$defs/malware_protection", list.MaxItems(1) & [..._#defs."/$defs/datasources/$defs/malware_protection"]])
		s3_logs?: matchN(1, [_#defs."/$defs/datasources/$defs/s3_logs", list.MaxItems(1) & [..._#defs."/$defs/datasources/$defs/s3_logs"]])
	})

	_#defs: "/$defs/datasources/$defs/kubernetes": close({
		audit_logs!: matchN(1, [_#defs."/$defs/datasources/$defs/kubernetes/$defs/audit_logs", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/datasources/$defs/kubernetes/$defs/audit_logs"]])
	})

	_#defs: "/$defs/datasources/$defs/kubernetes/$defs/audit_logs": close({
		enable!: bool
	})

	_#defs: "/$defs/datasources/$defs/malware_protection": close({
		scan_ec2_instance_with_findings!: matchN(1, [_#defs."/$defs/datasources/$defs/malware_protection/$defs/scan_ec2_instance_with_findings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/datasources/$defs/malware_protection/$defs/scan_ec2_instance_with_findings"]])
	})

	_#defs: "/$defs/datasources/$defs/malware_protection/$defs/scan_ec2_instance_with_findings": close({
		ebs_volumes!: matchN(1, [_#defs."/$defs/datasources/$defs/malware_protection/$defs/scan_ec2_instance_with_findings/$defs/ebs_volumes", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/datasources/$defs/malware_protection/$defs/scan_ec2_instance_with_findings/$defs/ebs_volumes"]])
	})

	_#defs: "/$defs/datasources/$defs/malware_protection/$defs/scan_ec2_instance_with_findings/$defs/ebs_volumes": close({
		enable!: bool
	})

	_#defs: "/$defs/datasources/$defs/s3_logs": close({
		enable!: bool
	})
}
