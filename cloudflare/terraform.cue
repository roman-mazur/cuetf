package cloudflare

// #Terraform defines the schema of terraform json document that uses the Cloudflare provider.
#Terraform: {
  terraform: required_providers: cloudflare: {
      source: "cloudflare/cloudflare"
      version: "= 4.43"
	}

	provider?: cloudflare: #provider

	resource?: [type=#cloudflareTypes]: [name=string]: _res[type]
	data?: [type=#cloudflareTypes]: [name=string]:     _ds[type]
}

#cloudflareTypes: =~"^cloudflare_.+"

_res: [#cloudflareTypes]: _
_ds: [#cloudflareTypes]:  _
