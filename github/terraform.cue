package cloudflare

// #Terraform defines the schema of terraform json document that uses the Cloudflare provider.
#Terraform: {
	provider?: github: #provider

	resource?: [type=#githubTypes]: [name=string]: _res[type]
	data?: [type=#githubTypes]: [name=string]:     _ds[type]
}

#githubTypes: =~"^cloudflare_.+"

_res: [#githubTypes]: _
_ds: [#githubTypes]:  _
