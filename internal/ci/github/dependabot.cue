// GitHub Dependabot v2 config
package github

import (
	"list"
	"struct"
	"strings"
)

#Dependabot: {
	@jsonschema(schema="http://json-schema.org/draft-07/schema#")
	@jsonschema(id="https://json.schemastore.org/dependabot-2.0.json")
	matchIf({
		"enable-beta-ecosystems"!: true
		...
	}, {
		...
	}, {
		updates?: null | bool | number | string | [...null | bool | number | string | [...] | {
			"package-ecosystem"?: #."package-ecosystem-values"
			...
		}] | {
			...
		}
		...
	}) & {
		...
	} & close({
		// Config file version
		//
		// Dependabot configuration files require this key, and its value
		// must be 2
		version!: 2 & int

		// Enable ecosystems that have beta-level support
		"enable-beta-ecosystems"?: bool
		updates!: [...#update]
		registries?: #registry
	})

	#: "dependency-type": "direct" | "indirect" | "all" | "production" | "development"

	#: "insecure-external-code-execution": "allow" | "deny"

	#: "package-ecosystem-values": "bun" | "bundler" | "cargo" | "composer" | "devcontainers" | "docker" | "docker-compose" | "dotnet-sdk" | "elm" | "gitsubmodule" | "github-actions" | "gomod" | "gradle" | "helm" | "maven" | "mix" | "npm" | "nuget" | "pip" | "pub" | "rust-toolchain" | "swift" | "terraform" | "uv" | "vcpkg"

	#: "schedule-day": "monday" | "tuesday" | "wednesday" | "thursday" | "friday" | "saturday" | "sunday"

	#: "schedule-interval": "daily" | "weekly" | "monthly" | "quarterly" | "semiannually" | "yearly" | "cron"

	#: "update-types": list.UniqueItems() & [..."version-update:semver-major" | "version-update:semver-minor" | "version-update:semver-patch"] & [_, ...]

	#: "versioning-strategy": "auto" | "increase" | "increase-if-necessary" | "lockfile-only" | "widen"

	// The top-level registries key is optional. It allows you to
	// specify authentication details that Dependabot can use to
	// access private package registries.
	#registry: struct.MinFields(1) & close({
		{[=~".+"]: close({
			// Identifies the type of registry.
			type!: "cargo-registry" | "composer-repository" | "docker-registry" | "git" | "hex-organization" | "hex-repository" | "maven-repository" | "npm-registry" | "nuget-feed" | "pub-repository" | "python-index" | "rubygems-server" | "terraform-registry"

			// The URL to use to access the dependencies in this registry. The
			// protocol is optional. If not specified, 'https://' is assumed.
			// Dependabot adds or ignores trailing slashes as required.
			url!: string

			// The username that Dependabot uses to access the registry.
			username?: string

			// A reference to a Dependabot secret containing the password for
			// the specified user.
			password?: string

			// A reference to a Dependabot secret containing an access key for
			// this registry.
			key?: string

			// A reference to a Dependabot secret containing an access token
			// for this registry.
			token?: string

			// For registries with type: python-index, if the boolean value is
			// true, pip resolves dependencies by using the specified URL
			// rather than the base URL of the Python Package Index (by
			// default https://pypi.org/simple).
			"replaces-base"?: bool, organization?: string, repo?: string, "auth-key"?: string, "public-key-fingerprint"?: string
		})
		}
	})

	#timezone: "Africa/Abidjan" | "Africa/Accra" | "Africa/Addis_Ababa" | "Africa/Algiers" | "Africa/Asmara" | "Africa/Asmera" | "Africa/Bamako" | "Africa/Bangui" | "Africa/Banjul" | "Africa/Bissau" | "Africa/Blantyre" | "Africa/Brazzaville" | "Africa/Bujumbura" | "Africa/Cairo" | "Africa/Casablanca" | "Africa/Ceuta" | "Africa/Conakry" | "Africa/Dakar" | "Africa/Dar_es_Salaam" | "Africa/Djibouti" | "Africa/Douala" | "Africa/El_Aaiun" | "Africa/Freetown" | "Africa/Gaborone" | "Africa/Harare" | "Africa/Johannesburg" | "Africa/Juba" | "Africa/Kampala" | "Africa/Khartoum" | "Africa/Kigali" | "Africa/Kinshasa" | "Africa/Lagos" | "Africa/Libreville" | "Africa/Lome" | "Africa/Luanda" | "Africa/Lubumbashi" | "Africa/Lusaka" | "Africa/Malabo" | "Africa/Maputo" | "Africa/Maseru" | "Africa/Mbabane" | "Africa/Mogadishu" | "Africa/Monrovia" | "Africa/Nairobi" | "Africa/Ndjamena" | "Africa/Niamey" | "Africa/Nouakchott" | "Africa/Ouagadougou" | "Africa/Porto-Novo" | "Africa/Sao_Tome" | "Africa/Timbuktu" | "Africa/Tripoli" | "Africa/Tunis" | "Africa/Windhoek" | "America/Adak" | "America/Anchorage" | "America/Anguilla" | "America/Antigua" | "America/Araguaina" | "America/Argentina/Buenos_Aires" | "America/Argentina/Catamarca" | "America/Argentina/ComodRivadavia" | "America/Argentina/Cordoba" | "America/Argentina/Jujuy" | "America/Argentina/La_Rioja" | "America/Argentina/Mendoza" | "America/Argentina/Rio_Gallegos" | "America/Argentina/Salta" | "America/Argentina/San_Juan" | "America/Argentina/San_Luis" | "America/Argentina/Tucuman" | "America/Argentina/Ushuaia" | "America/Aruba" | "America/Asuncion" | "America/Atikokan" | "America/Atka" | "America/Bahia" | "America/Bahia_Banderas" | "America/Barbados" | "America/Belem" | "America/Belize" | "America/Blanc-Sablon" | "America/Boa_Vista" | "America/Bogota" | "America/Boise" | "America/Buenos_Aires" | "America/Cambridge_Bay" | "America/Campo_Grande" | "America/Cancun" | "America/Caracas" | "America/Catamarca" | "America/Cayenne" | "America/Cayman" | "America/Chicago" | "America/Chihuahua" | "America/Coral_Harbour" | "America/Cordoba" | "America/Costa_Rica" | "America/Creston" | "America/Cuiaba" | "America/Curacao" | "America/Danmarkshavn" | "America/Dawson" | "America/Dawson_Creek" | "America/Denver" | "America/Detroit" | "America/Dominica" | "America/Edmonton" | "America/Eirunepe" | "America/El_Salvador" | "America/Ensenada" | "America/Fort_Nelson" | "America/Fort_Wayne" | "America/Fortaleza" | "America/Glace_Bay" | "America/Godthab" | "America/Goose_Bay" | "America/Grand_Turk" | "America/Grenada" | "America/Guadeloupe" | "America/Guatemala" | "America/Guayaquil" | "America/Guyana" | "America/Halifax" | "America/Havana" | "America/Hermosillo" | "America/Indiana/Indianapolis" | "America/Indiana/Knox" | "America/Indiana/Marengo" | "America/Indiana/Petersburg" | "America/Indiana/Tell_City" | "America/Indiana/Vevay" | "America/Indiana/Vincennes" | "America/Indiana/Winamac" | "America/Indianapolis" | "America/Inuvik" | "America/Iqaluit" | "America/Jamaica" | "America/Jujuy" | "America/Juneau" | "America/Kentucky/Louisville" | "America/Kentucky/Monticello" | "America/Knox_IN" | "America/Kralendijk" | "America/La_Paz" | "America/Lima" | "America/Los_Angeles" | "America/Louisville" | "America/Lower_Princes" | "America/Maceio" | "America/Managua" | "America/Manaus" | "America/Marigot" | "America/Martinique" | "America/Matamoros" | "America/Mazatlan" | "America/Mendoza" | "America/Menominee" | "America/Merida" | "America/Metlakatla" | "America/Mexico_City" | "America/Miquelon" | "America/Moncton" | "America/Monterrey" | "America/Montevideo" | "America/Montreal" | "America/Montserrat" | "America/Nassau" | "America/New_York" | "America/Nipigon" | "America/Nome" | "America/Noronha" | "America/North_Dakota/Beulah" | "America/North_Dakota/Center" | "America/North_Dakota/New_Salem" | "America/Nuuk" | "America/Ojinaga" | "America/Panama" | "America/Pangnirtung" | "America/Paramaribo" | "America/Phoenix" | "America/Port-au-Prince" | "America/Port_of_Spain" | "America/Porto_Acre" | "America/Porto_Velho" | "America/Puerto_Rico" | "America/Punta_Arenas" | "America/Rainy_River" | "America/Rankin_Inlet" | "America/Recife" | "America/Regina" | "America/Resolute" | "America/Rio_Branco" | "America/Rosario" | "America/Santa_Isabel" | "America/Santarem" | "America/Santiago" | "America/Santo_Domingo" | "America/Sao_Paulo" | "America/Scoresbysund" | "America/Shiprock" | "America/Sitka" | "America/St_Barthelemy" | "America/St_Johns" | "America/St_Kitts" | "America/St_Lucia" | "America/St_Thomas" | "America/St_Vincent" | "America/Swift_Current" | "America/Tegucigalpa" | "America/Thule" | "America/Thunder_Bay" | "America/Tijuana" | "America/Toronto" | "America/Tortola" | "America/Vancouver" | "America/Virgin" | "America/Whitehorse" | "America/Winnipeg" | "America/Yakutat" | "America/Yellowknife" | "Antarctica/Casey" | "Antarctica/Davis" | "Antarctica/DumontDUrville" | "Antarctica/Macquarie" | "Antarctica/Mawson" | "Antarctica/McMurdo" | "Antarctica/Palmer" | "Antarctica/Rothera" | "Antarctica/South_Pole" | "Antarctica/Syowa" | "Antarctica/Troll" | "Antarctica/Vostok" | "Arctic/Longyearbyen" | "Asia/Aden" | "Asia/Almaty" | "Asia/Amman" | "Asia/Anadyr" | "Asia/Aqtau" | "Asia/Aqtobe" | "Asia/Ashgabat" | "Asia/Ashkhabad" | "Asia/Atyrau" | "Asia/Baghdad" | "Asia/Bahrain" | "Asia/Baku" | "Asia/Bangkok" | "Asia/Barnaul" | "Asia/Beirut" | "Asia/Bishkek" | "Asia/Brunei" | "Asia/Calcutta" | "Asia/Chita" | "Asia/Choibalsan" | "Asia/Chongqing" | "Asia/Chungking" | "Asia/Colombo" | "Asia/Dacca" | "Asia/Damascus" | "Asia/Dhaka" | "Asia/Dili" | "Asia/Dubai" | "Asia/Dushanbe" | "Asia/Famagusta" | "Asia/Gaza" | "Asia/Harbin" | "Asia/Hebron" | "Asia/Ho_Chi_Minh" | "Asia/Hong_Kong" | "Asia/Hovd" | "Asia/Irkutsk" | "Asia/Istanbul" | "Asia/Jakarta" | "Asia/Jayapura" | "Asia/Jerusalem" | "Asia/Kabul" | "Asia/Kamchatka" | "Asia/Karachi" | "Asia/Kashgar" | "Asia/Kathmandu" | "Asia/Katmandu" | "Asia/Khandyga" | "Asia/Kolkata" | "Asia/Krasnoyarsk" | "Asia/Kuala_Lumpur" | "Asia/Kuching" | "Asia/Kuwait" | "Asia/Macao" | "Asia/Macau" | "Asia/Magadan" | "Asia/Makassar" | "Asia/Manila" | "Asia/Muscat" | "Asia/Nicosia" | "Asia/Novokuznetsk" | "Asia/Novosibirsk" | "Asia/Omsk" | "Asia/Oral" | "Asia/Phnom_Penh" | "Asia/Pontianak" | "Asia/Pyongyang" | "Asia/Qatar" | "Asia/Qostanay" | "Asia/Qyzylorda" | "Asia/Rangoon" | "Asia/Riyadh" | "Asia/Saigon" | "Asia/Sakhalin" | "Asia/Samarkand" | "Asia/Seoul" | "Asia/Shanghai" | "Asia/Singapore" | "Asia/Srednekolymsk" | "Asia/Taipei" | "Asia/Tashkent" | "Asia/Tbilisi" | "Asia/Tehran" | "Asia/Tel_Aviv" | "Asia/Thimbu" | "Asia/Thimphu" | "Asia/Tokyo" | "Asia/Tomsk" | "Asia/Ujung_Pandang" | "Asia/Ulaanbaatar" | "Asia/Ulan_Bator" | "Asia/Urumqi" | "Asia/Ust-Nera" | "Asia/Vientiane" | "Asia/Vladivostok" | "Asia/Yakutsk" | "Asia/Yangon" | "Asia/Yekaterinburg" | "Asia/Yerevan" | "Atlantic/Azores" | "Atlantic/Bermuda" | "Atlantic/Canary" | "Atlantic/Cape_Verde" | "Atlantic/Faeroe" | "Atlantic/Faroe" | "Atlantic/Jan_Mayen" | "Atlantic/Madeira" | "Atlantic/Reykjavik" | "Atlantic/South_Georgia" | "Atlantic/St_Helena" | "Atlantic/Stanley" | "Australia/ACT" | "Australia/Adelaide" | "Australia/Brisbane" | "Australia/Broken_Hill" | "Australia/Canberra" | "Australia/Currie" | "Australia/Darwin" | "Australia/Eucla" | "Australia/Hobart" | "Australia/LHI" | "Australia/Lindeman" | "Australia/Lord_Howe" | "Australia/Melbourne" | "Australia/North" | "Australia/NSW" | "Australia/Perth" | "Australia/Queensland" | "Australia/South" | "Australia/Sydney" | "Australia/Tasmania" | "Australia/Victoria" | "Australia/West" | "Australia/Yancowinna" | "Brazil/Acre" | "Brazil/DeNoronha" | "Brazil/East" | "Brazil/West" | "Canada/Atlantic" | "Canada/Central" | "Canada/Eastern" | "Canada/Mountain" | "Canada/Newfoundland" | "Canada/Pacific" | "Canada/Saskatchewan" | "Canada/Yukon" | "Chile/Continental" | "Chile/EasterIsland" | "Cuba" | "Egypt" | "Eire" | "Etc/GMT" | "Etc/GMT+0" | "Etc/GMT+1" | "Etc/GMT+10" | "Etc/GMT+11" | "Etc/GMT+12" | "Etc/GMT+2" | "Etc/GMT+3" | "Etc/GMT+4" | "Etc/GMT+5" | "Etc/GMT+6" | "Etc/GMT+7" | "Etc/GMT+8" | "Etc/GMT+9" | "Etc/GMT-0" | "Etc/GMT-1" | "Etc/GMT-10" | "Etc/GMT-11" | "Etc/GMT-12" | "Etc/GMT-13" | "Etc/GMT-14" | "Etc/GMT-2" | "Etc/GMT-3" | "Etc/GMT-4" | "Etc/GMT-5" | "Etc/GMT-6" | "Etc/GMT-7" | "Etc/GMT-8" | "Etc/GMT-9" | "Etc/GMT0" | "Etc/Greenwich" | "Etc/UCT" | "Etc/Universal" | "Etc/UTC" | "Etc/Zulu" | "Europe/Amsterdam" | "Europe/Andorra" | "Europe/Astrakhan" | "Europe/Athens" | "Europe/Belfast" | "Europe/Belgrade" | "Europe/Berlin" | "Europe/Bratislava" | "Europe/Brussels" | "Europe/Bucharest" | "Europe/Budapest" | "Europe/Busingen" | "Europe/Chisinau" | "Europe/Copenhagen" | "Europe/Dublin" | "Europe/Gibraltar" | "Europe/Guernsey" | "Europe/Helsinki" | "Europe/Isle_of_Man" | "Europe/Istanbul" | "Europe/Jersey" | "Europe/Kaliningrad" | "Europe/Kiev" | "Europe/Kirov" | "Europe/Kyiv" | "Europe/Lisbon" | "Europe/Ljubljana" | "Europe/London" | "Europe/Luxembourg" | "Europe/Madrid" | "Europe/Malta" | "Europe/Mariehamn" | "Europe/Minsk" | "Europe/Monaco" | "Europe/Moscow" | "Europe/Nicosia" | "Europe/Oslo" | "Europe/Paris" | "Europe/Podgorica" | "Europe/Prague" | "Europe/Riga" | "Europe/Rome" | "Europe/Samara" | "Europe/San_Marino" | "Europe/Sarajevo" | "Europe/Saratov" | "Europe/Simferopol" | "Europe/Skopje" | "Europe/Sofia" | "Europe/Stockholm" | "Europe/Tallinn" | "Europe/Tirane" | "Europe/Tiraspol" | "Europe/Ulyanovsk" | "Europe/Uzhgorod" | "Europe/Vaduz" | "Europe/Vatican" | "Europe/Vienna" | "Europe/Vilnius" | "Europe/Volgograd" | "Europe/Warsaw" | "Europe/Zagreb" | "Europe/Zaporozhye" | "Europe/Zurich" | "GB" | "GB-Eire" | "Hongkong" | "Iceland" | "Indian/Antananarivo" | "Indian/Chagos" | "Indian/Christmas" | "Indian/Cocos" | "Indian/Comoro" | "Indian/Kerguelen" | "Indian/Mahe" | "Indian/Maldives" | "Indian/Mauritius" | "Indian/Mayotte" | "Indian/Reunion" | "Iran" | "Israel" | "Jamaica" | "Japan" | "Kwajalein" | "Libya" | "Mexico/BajaNorte" | "Mexico/BajaSur" | "Mexico/General" | "Navajo" | "NZ" | "NZ-CHAT" | "Pacific/Apia" | "Pacific/Auckland" | "Pacific/Bougainville" | "Pacific/Chatham" | "Pacific/Chuuk" | "Pacific/Easter" | "Pacific/Efate" | "Pacific/Enderbury" | "Pacific/Fakaofo" | "Pacific/Fiji" | "Pacific/Funafuti" | "Pacific/Galapagos" | "Pacific/Gambier" | "Pacific/Guadalcanal" | "Pacific/Guam" | "Pacific/Honolulu" | "Pacific/Johnston" | "Pacific/Kanton" | "Pacific/Kiritimati" | "Pacific/Kosrae" | "Pacific/Kwajalein" | "Pacific/Majuro" | "Pacific/Marquesas" | "Pacific/Midway" | "Pacific/Nauru" | "Pacific/Niue" | "Pacific/Norfolk" | "Pacific/Noumea" | "Pacific/Pago_Pago" | "Pacific/Palau" | "Pacific/Pitcairn" | "Pacific/Pohnpei" | "Pacific/Ponape" | "Pacific/Port_Moresby" | "Pacific/Rarotonga" | "Pacific/Saipan" | "Pacific/Samoa" | "Pacific/Tahiti" | "Pacific/Tarawa" | "Pacific/Tongatapu" | "Pacific/Truk" | "Pacific/Wake" | "Pacific/Wallis" | "Pacific/Yap" | "Poland" | "Portugal" | "PRC" | "ROC" | "Singapore" | "US/Alaska" | "US/Aleutian" | "US/Arizona" | "US/Central" | "US/East-Indiana" | "US/Eastern" | "US/Hawaii" | "US/Indiana-Starke" | "US/Michigan" | "US/Mountain" | "US/Pacific" | "US/Samoa"

	#update: matchN(2, [{
		"package-ecosystem"!: _
		schedule!:            _
		...
	}, matchN(1, [{
		directories!: _
		...
	}, {
		directory!: _
		...
	}])]) & close({
		// Customize which updates are allowed
		allow?: [...matchN(>=1, [{
			"dependency-name"!: _
			...
		}, {
			"dependency-type"!: _
			...
		}]) & close({
			"dependency-name"?: string
			"dependency-type"?: #."dependency-type"
		})]

		// Assignees to set on pull requests
		assignees?: list.UniqueItems() & [...strings.MinRunes(1)] & [_, ...]

		// Dependabot attempts to detect your commit message preferences
		// and use similar patterns. Use this option to specify your
		// preferences explicitly.
		"commit-message"?: matchN(>=1, [{
			prefix!: _
			...
		}, {
			"prefix-development"!: _
			...
		}, {
			include!: _
			...
		}]) & close({
			// A prefix for all commit messages. When you specify a prefix for
			// commit messages, GitHub will automatically add a colon between
			// the defined prefix and the commit message provided the defined
			// prefix ends with a letter, number, closing parenthesis, or
			// closing bracket. This means that, for example, if you end the
			// prefix with a whitespace, there will be no colon added between
			// the prefix and the commit message.
			prefix?: strings.MaxRunes(50)

			// A separate prefix for all commit messages that update
			// dependencies in the Development dependency group. When you
			// specify a value for this option, the prefix is used only for
			// updates to dependencies in the Production dependency group.
			// This is not supported by all package ecosystems.
			"prefix-development"?: strings.MaxRunes(50)

			// Specifies that any prefix is followed by a list of the
			// dependencies updated in the commit.
			include?: "scope"
		})

		// Defines a cooldown period for dependency updates, allowing
		// updates to be delayed for a configurable number of days. This
		// feature enables users to customize how often Dependabot
		// generates new version updates, offering greater control over
		// update frequency.
		cooldown?: close({
			// Default cooldown period for dependencies without specific rules
			// (optional).
			"default-days"?: int & >=0

			// Cooldown period for major version updates (optional, applies
			// only to package managers supporting SemVer).
			"semver-major-days"?: int & >=0

			// Cooldown period for minor version updates (optional, applies
			// only to package managers supporting SemVer).
			"semver-minor-days"?: int & >=0

			// Cooldown period for patch version updates (optional, applies
			// only to package managers supporting SemVer).
			"semver-patch-days"?: int & >=0

			// List of dependencies to apply cooldown (up to 150 items).
			// Supports wildcards (`*`).
			include?: list.MaxItems(150) & [...string]

			// List of dependencies excluded from cooldown (up to 150 items).
			// Supports wildcards (`*`).
			exclude?: list.MaxItems(150) & [...string]
		})

		// Locations of package manifests
		directories?: list.UniqueItems() & [...strings.MinRunes(1)] & [_, ...]

		// Location of package manifests
		directory?: string

		// List of file paths to exclude from dependency updates
		"exclude-paths"?: list.UniqueItems() & [...] & [...string]

		// Configure groups for dependencies. Each 'groups' property is
		// arbitrary will appear in pull request titles and branch names.
		// For example, the code snippet '{"groups": {"NPM dependencies":
		// {"patterns": ["*"]}}}' sets the group name to 'NPM
		// dependencies'.
		groups?: struct.MinFields(1) & {
			[string]: matchN(>=1, [{
				"dependency-type"!: _
				...
			}, {
				patterns!: _
				...
			}, {
				"exclude-patterns"!: _
				...
			}, {
				"update-types"!: _
				...
			}]) & close({
				// Use to specify a whether the rules in the group apply to
				// version updates or security updates.
				"applies-to"?: "version-updates" | "security-updates"

				// Specify a dependency type to be included in the group.
				"dependency-type"?: "development" | "production"

				// Define strings of characters that match with a dependency name
				// (or multiple dependency names) to include those dependencies
				// in the group.
				patterns?: list.UniqueItems() & [...strings.MinRunes(1)] & [_, ...]

				// Exclude certain dependencies from the group. If a dependency is
				// excluded from a group, Dependabot will continue to raise
				// single pull requests to update the dependency to its latest
				// version.
				"exclude-patterns"?: list.UniqueItems() & [...strings.MinRunes(1)] & [_, ...]

				// Specify the semantic versioning level to include in the group
				"update-types"?: list.UniqueItems() & [..."major" | "minor" | "patch"] & [_, ...]
			})
		}

		// Ignore certain dependencies or versions
		ignore?: [...matchN(>=1, [{
			"dependency-name"!: _
			...
		}, {
			"update-types"!: _
			...
		}, {
			versions!: _
			...
		}]) & close({
			// Use to ignore updates for dependencies with matching names,
			// optionally using * to match zero or more characters.
			"dependency-name"?: string
			"update-types"?:    #."update-types"

			// Use to ignore specific versions or ranges of versions. If you
			// want to define a range, use the standard pattern for the
			// package manager.
			versions?: list.UniqueItems() & [...string] & [_, ...]
		})]
		"insecure-external-code-execution"?: #."insecure-external-code-execution"

		// Labels to set on pull requests
		labels?: list.UniqueItems() & [...strings.MinRunes(1)] & [...]

		// Associate all pull requests raised for a package manager with a
		// milestone. You need to specify the numeric identifier of the
		// milestone and not its label.
		milestone?: int & >=1

		// Limit number of open pull requests for version updates
		"open-pull-requests-limit"?: int & >=0

		// Package manager to use
		"package-ecosystem"?: matchN(>=1, [#."package-ecosystem-values" & string, strings.MinRunes( 1)])

		// Pull request branch name preferences
		"pull-request-branch-name"?: close({
			// Change separator for PR branch name
			separator!: "-" | "_" | "/"
		})

		// Disable automatic rebasing. 'auto' is the default and
		// Dependabot will rebase open pull requests when changes are
		// detected. 'disabled' will disable automatic rebasing.
		"rebase-strategy"?: "auto" | "disabled"
		registries?: matchN(1, [list.UniqueItems() & [...strings.MinRunes(1)] & [_, ...], "*"])

		// Schedule preferences
		schedule?: matchIf({
			interval?: "cron"
			...
		}, {
			interval!: _
			cronjob!:  _
			...
		}, {
			interval!: _
			...
		}) & {
			...
		} & {
			interval?: #."schedule-interval"
			day?:      #."schedule-day"

			// Specify an alternative time of day to check for updates
			// (format: hh:mm)
			time?:     =~"^([01][0-9]|2[0-3]):[0-5][0-9]$"
			timezone?: #timezone

			// Specify a valid cron expression for updates
			cronjob?: string
			...
		}

		// Specify a different branch for manifest files and for pull
		// requests.
		"target-branch"?: strings.MinRunes(1)

		// Tell Dependabot to vendor dependencies when updating them.
		// Don't use this option if you're using 'gomod'.
		vendor?:                bool
		"versioning-strategy"?: #."versioning-strategy"
	})
}
