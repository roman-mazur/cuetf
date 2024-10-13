package res

import "list"

#aws_storagegateway_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_storagegateway_gateway")
	activation_key?:                              string
	arn?:                                         string
	average_download_rate_limit_in_bits_per_sec?: number
	average_upload_rate_limit_in_bits_per_sec?:   number
	cloudwatch_log_group_arn?:                    string
	ec2_instance_id?:                             string
	endpoint_type?:                               string
	gateway_id?:                                  string
	gateway_ip_address?:                          string
	gateway_name!:                                string
	gateway_network_interface?: [...{
		ipv4_address?: string
	}]
	gateway_timezone!:          string
	gateway_type?:              string
	gateway_vpc_endpoint?:      string
	host_environment?:          string
	id?:                        string
	medium_changer_type?:       string
	smb_file_share_visibility?: bool
	smb_guest_password?:        string
	smb_security_strategy?:     string
	tags?: [string]:     string
	tags_all?: [string]: string
	tape_drive_type?: string
	maintenance_start_time?: #maintenance_start_time | list.MaxItems(1) & [...#maintenance_start_time]
	smb_active_directory_settings?: #smb_active_directory_settings | list.MaxItems(1) & [...#smb_active_directory_settings]
	timeouts?: #timeouts

	#maintenance_start_time: {
		day_of_month?:   string
		day_of_week?:    string
		hour_of_day!:    number
		minute_of_hour?: number
	}

	#smb_active_directory_settings: {
		active_directory_status?: string
		domain_controllers?: [...string]
		domain_name!:         string
		organizational_unit?: string
		password!:            string
		timeout_in_seconds?:  number
		username!:            string
	}

	#timeouts: create?: string
}
