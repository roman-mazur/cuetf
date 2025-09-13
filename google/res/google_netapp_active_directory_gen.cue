package res

#google_netapp_active_directory: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_netapp_active_directory")
	close({
		// Domain user accounts to be added to the local Administrators
		// group of the SMB service. Comma-separated list of domain users
		// or groups. The Domain Admin group is automatically added when
		// the service joins your domain as a hidden group.
		administrators?: [...string]

		// Enables AES-128 and AES-256 encryption for Kerberos-based
		// communication with Active Directory.
		aes_encryption?: bool

		// Domain user/group accounts to be added to the Backup Operators
		// group of the SMB service. The Backup Operators group allows
		// members to backup and restore files regardless of whether they
		// have read or write access to the files. Comma-separated list.
		backup_operators?: [...string]

		// Create time of the active directory. A timestamp in RFC3339 UTC
		// "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// An optional description of this resource.
		description?: string

		// Comma separated list of DNS server IP addresses for the Active
		// Directory domain.
		dns!: string

		// Fully qualified domain name for the Active Directory domain.
		domain!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If enabled, traffic between the SMB server to Domain Controller
		// (DC) will be encrypted.
		encrypt_dc_connections?: bool
		id?:                     string

		// Hostname of the Active Directory server used as Kerberos Key
		// Distribution Center. Only required for volumes using
		// kerberized NFSv4.1
		kdc_hostname?: string

		// IP address of the Active Directory server used as Kerberos Key
		// Distribution Center.
		kdc_ip?: string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Specifies whether or not the LDAP traffic needs to be signed.
		ldap_signing?: bool

		// Name of the region for the policy to apply to.
		location!: string

		// The resource name of the Active Directory pool. Needs to be
		// unique per location.
		name!:     string
		timeouts?: #timeouts

		// NetBIOS name prefix of the server to be created.
		// A five-character random ID is generated automatically, for
		// example, -6f9a, and appended to the prefix. The full UNC share
		// path will have the following format:
		// '\\NetBIOS_PREFIX-ABCD.DOMAIN_NAME\SHARE_NAME'
		net_bios_prefix!: string

		// Local UNIX users on clients without valid user information in
		// Active Directory are blocked from access to LDAP enabled
		// volumes.
		// This option can be used to temporarily switch such volumes to
		// AUTH_SYS authentication (user ID + 1-16 groups).
		nfs_users_with_ldap?: bool

		// Name of the Organizational Unit where you intend to create the
		// computer account for NetApp Volumes.
		// Defaults to 'CN=Computers' if left empty.
		organizational_unit?: string

		// Password for specified username. Note - Manual changes done to
		// the password will not be detected. Terraform will not re-apply
		// the password, unless you use a new password in Terraform.
		password!: string
		project?:  string

		// Domain accounts that require elevated privileges such as
		// 'SeSecurityPrivilege' to manage security logs. Comma-separated
		// list.
		security_operators?: [...string]

		// Specifies an Active Directory site to manage domain controller
		// selection.
		// Use when Active Directory domain controllers in multiple
		// regions are configured. Defaults to 'Default-First-Site-Name'
		// if left empty.
		site?: string

		// The state of the Active Directory policy (not the Active
		// Directory itself).
		state?: string

		// The state details of the Active Directory.
		state_details?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Username for the Active Directory account with permissions to
		// create the compute account within the specified organizational
		// unit.
		username!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
