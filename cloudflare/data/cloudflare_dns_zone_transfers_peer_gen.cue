package data

#cloudflare_dns_zone_transfers_peer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_dns_zone_transfers_peer")
	close({
		// IPv4/IPv6 address of primary or secondary nameserver, depending
		// on what zone this peer is linked to. For primary zones this IP
		// defines the IP of the secondary nameserver Cloudflare will
		// NOTIFY upon zone changes. For secondary zones this IP defines
		// the IP of the primary nameserver Cloudflare will send
		// AXFR/IXFR requests to.
		ip?:         string
		account_id!: string

		// Enable IXFR transfer protocol, default is AXFR. Only applicable
		// to secondary zones.
		ixfr_enable?: bool
		id?:          string

		// The name of the peer.
		name?:    string
		peer_id!: string

		// DNS port of primary or secondary nameserver, depending on what
		// zone this peer is linked to.
		port?: number

		// TSIG authentication will be used for zone transfer if
		// configured.
		tsig_id?: string
	})
}
