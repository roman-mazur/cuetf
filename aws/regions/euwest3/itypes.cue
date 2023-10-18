package euwest3

InstanceTypes: [{
	InstanceType:      "c5a.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1580
			BaselineThroughputInMBps: 197.5
			BaselineIops:             6600
			MaximumBandwidthInMbps:   3170
			MaximumThroughputInMBps:  396.25
			MaximumIops:              13300
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5ad.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 75
		Disks: [{
			SizeInGB: 75
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6gd.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 237
		Disks: [{
			SizeInGB: 237
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1188
			BaselineThroughputInMBps: 148.5
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "t4g.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  347
			BaselineThroughputInMBps: 43.375
			BaselineIops:             2000
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    6
		Ipv6AddressesPerInterface:    6
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6in.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             10937
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              87500
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 30 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 30 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5n.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 43008
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3en.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 30000
		Disks: [{
			SizeInGB: 7500
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface: 30
		Ipv6AddressesPerInterface: 30
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "d2.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: ["ebs", "instance-store"]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.4
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 62464
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 12288
		Disks: [{
			SizeInGB: 2048
			Count:    6
			Type:     "hdd"
		}]
		NvmeSupport:       "unsupported"
		EncryptionSupport: "unsupported"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1000
			BaselineThroughputInMBps: 125.0
			BaselineIops:             8000
			MaximumBandwidthInMbps:   1000
			MaximumThroughputInMBps:  125.0
			MaximumIops:              8000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "High"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "High"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "i4i.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 1048576
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 30000
		Disks: [{
			SizeInGB: 3750
			Count:    8
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r5a.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1085
			BaselineThroughputInMBps: 135.625
			BaselineIops:             6000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             175000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              175000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3en.3xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          12
		DefaultCores:          6
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 7500
		Disks: [{
			SizeInGB: 7500
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  3800
			BaselineThroughputInMBps: 475.0
			BaselineIops:             15000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "x2iedn.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 118
		Disks: [{
			SizeInGB: 118
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             8125
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              65000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6g.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5a.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1580
			BaselineThroughputInMBps: 197.5
			BaselineIops:             8333
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5a.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2880
			BaselineThroughputInMBps: 360.0
			BaselineIops:             16000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  60000
			BaselineThroughputInMBps: 7500.0
			BaselineIops:             262500
			MaximumBandwidthInMbps:   60000
			MaximumThroughputInMBps:  7500.0
			MaximumIops:              262500
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "150 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "150 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 75
		Disks: [{
			SizeInGB: 75
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6800
			BaselineThroughputInMBps: 850.0
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6800
			MaximumThroughputInMBps:  850.0
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6i.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             20000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5d.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 50
		Disks: [{
			SizeInGB: 50
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             4000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r4.16xlarge"
	CurrentGeneration: false
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 499712
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14000
			BaselineThroughputInMBps: 1750.0
			BaselineIops:             75000
			MaximumBandwidthInMbps:   14000
			MaximumThroughputInMBps:  1750.0
			MaximumIops:              75000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m6i.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12.5 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12.5 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  38000
			BaselineThroughputInMBps: 4750.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   38000
			MaximumThroughputInMBps:  4750.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "i4i.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 15000
		Disks: [{
			SizeInGB: 3750
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "37.5 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "37.5 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3a.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             18750
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5ad.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 300
		Disks: [{
			SizeInGB: 300
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1580
			BaselineThroughputInMBps: 197.5
			BaselineIops:             8333
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t4g.nano"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 512
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  43
			BaselineThroughputInMBps: 5.375
			BaselineIops:             250
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "t3a.small"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  175
			BaselineThroughputInMBps: 21.875
			BaselineIops:             1000
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 59
		Disks: [{
			SizeInGB: 59
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  315
			BaselineThroughputInMBps: 39.375
			BaselineIops:             2500
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6gd.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "is4gen.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 24576
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3750
		Disks: [{
			SizeInGB: 3750
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             10000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5a.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5ad.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [6, 12, 18, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6780
			BaselineThroughputInMBps: 847.5
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6780
			MaximumThroughputInMBps:  847.5
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  30000
			BaselineThroughputInMBps: 3750.0
			BaselineIops:             120000
			MaximumBandwidthInMbps:   30000
			MaximumThroughputInMBps:  3750.0
			MaximumIops:              120000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "37.5 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "37.5 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5ad.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [6, 12, 18, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6780
			BaselineThroughputInMBps: 847.5
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6780
			MaximumThroughputInMBps:  847.5
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  30000
			BaselineThroughputInMBps: 3750.0
			BaselineIops:             120000
			MaximumBandwidthInMbps:   30000
			MaximumThroughputInMBps:  3750.0
			MaximumIops:              120000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "37.5 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "37.5 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6g.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5a.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1580
			BaselineThroughputInMBps: 197.5
			BaselineIops:             8333
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12.5 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12.5 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1200
		Disks: [{
			SizeInGB: 600
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6800
			BaselineThroughputInMBps: 850.0
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6800
			MaximumThroughputInMBps:  850.0
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "x2idn.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1572864
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2850
		Disks: [{
			SizeInGB: 1425
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  60000
			BaselineThroughputInMBps: 7500.0
			BaselineIops:             260000
			MaximumBandwidthInMbps:   60000
			MaximumThroughputInMBps:  7500.0
			MaximumIops:              260000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 237
		Disks: [{
			SizeInGB: 237
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1188
			BaselineThroughputInMBps: 148.5
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c5n.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 21504
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             10000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "x1.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: ["ebs", "instance-store"]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 999424
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1920
		Disks: [{
			SizeInGB: 1920
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "unsupported"
		EncryptionSupport: "unsupported"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  7000
			BaselineThroughputInMBps: 875.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   7000
			MaximumThroughputInMBps:  875.0
			MaximumIops:              40000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r5.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "is4gen.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 15000
		Disks: [{
			SizeInGB: 7500
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5a.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6g.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14250
			BaselineThroughputInMBps: 1781.25
			BaselineIops:             50000
			MaximumBandwidthInMbps:   14250
			MaximumThroughputInMBps:  1781.25
			MaximumIops:              50000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6g.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  630
			BaselineThroughputInMBps: 78.75
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "im4gn.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1875
		Disks: [{
			SizeInGB: 1875
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             10000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5a.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [6, 12, 18, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6780
			BaselineThroughputInMBps: 847.5
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6780
			MaximumThroughputInMBps:  847.5
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6i.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             6000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6g.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5d.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 150
		Disks: [{
			SizeInGB: 150
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "d2.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: ["ebs", "instance-store"]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.4
	}
	VCpuInfo: {
		DefaultVCpus:          36
		DefaultCores:          18
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 249856
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 49152
		Disks: [{
			SizeInGB: 2048
			Count:    24
			Type:     "hdd"
		}]
		NvmeSupport:       "unsupported"
		EncryptionSupport: "unsupported"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4000
			BaselineThroughputInMBps: 500.0
			BaselineIops:             32000
			MaximumBandwidthInMbps:   4000
			MaximumThroughputInMBps:  500.0
			MaximumIops:              32000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "im4gn.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3750
		Disks: [{
			SizeInGB: 3750
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             20000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6i.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  30000
			BaselineThroughputInMBps: 3750.0
			BaselineIops:             120000
			MaximumBandwidthInMbps:   30000
			MaximumThroughputInMBps:  3750.0
			MaximumIops:              120000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "37.5 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "37.5 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5ad.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [12, 18, 24, 36, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13570
			BaselineThroughputInMBps: 1696.25
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13570
			MaximumThroughputInMBps:  1696.25
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2850
		Disks: [{
			SizeInGB: 1425
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14250
			BaselineThroughputInMBps: 1781.25
			BaselineIops:             50000
			MaximumBandwidthInMbps:   14250
			MaximumThroughputInMBps:  1781.25
			MaximumIops:              50000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6g.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1188
			BaselineThroughputInMBps: 148.5
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "x2iedn.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 237
		Disks: [{
			SizeInGB: 237
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             16250
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              65000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2400
		Disks: [{
			SizeInGB: 600
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13600
			BaselineThroughputInMBps: 1700.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13600
			MaximumThroughputInMBps:  1700.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 950
		Disks: [{
			SizeInGB: 950
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6i.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "inf1.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1190
			BaselineThroughputInMBps: 148.75
			BaselineIops:             4000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	InferenceAcceleratorInfo: Accelerators: [{
		Count:        1
		Name:         "Inferentia"
		Manufacturer: "AWS"
	}]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6g.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  315
			BaselineThroughputInMBps: 39.375
			BaselineIops:             2500
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6gd.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 118
		Disks: [{
			SizeInGB: 118
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  630
			BaselineThroughputInMBps: 78.75
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6in.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  30000
			BaselineThroughputInMBps: 3750.0
			BaselineIops:             131250
			MaximumBandwidthInMbps:   30000
			MaximumThroughputInMBps:  3750.0
			MaximumIops:              131250
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5n.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 5376
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             4000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "im4gn.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 15000
		Disks: [{
			SizeInGB: 7500
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5ad.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1200
		Disks: [{
			SizeInGB: 600
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6gd.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 59
		Disks: [{
			SizeInGB: 59
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  315
			BaselineThroughputInMBps: 39.375
			BaselineIops:             2500
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "t2.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Moderate"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Moderate"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r6g.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5dn.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1200
		Disks: [{
			SizeInGB: 600
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6800
			BaselineThroughputInMBps: 850.0
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6800
			MaximumThroughputInMBps:  850.0
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5ad.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1200
		Disks: [{
			SizeInGB: 600
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.88
			BaselineIops:             10000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "i3en.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 60000
		Disks: [{
			SizeInGB: 7500
			Count:    8
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "g4dn.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        8
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 131072
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r6gd.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 474
		Disks: [{
			SizeInGB: 474
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5ad.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 600
		Disks: [{
			SizeInGB: 300
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2880
			BaselineThroughputInMBps: 360.0
			BaselineIops:             16000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6g.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1188
			BaselineThroughputInMBps: 148.5
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6i.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             20000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c6gd.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "t3.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    12
		Ipv6AddressesPerInterface:    12
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3a.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  350
			BaselineThroughputInMBps: 43.75
			BaselineIops:             2000
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    6
		Ipv6AddressesPerInterface:    6
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  28500
			BaselineThroughputInMBps: 3562.5
			BaselineIops:             120000
			MaximumBandwidthInMbps:   28500
			MaximumThroughputInMBps:  3562.5
			MaximumIops:              120000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6gd.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 237
		Disks: [{
			SizeInGB: 237
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1188
			BaselineThroughputInMBps: 148.5
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5ad.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 300
		Disks: [{
			SizeInGB: 300
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1580
			BaselineThroughputInMBps: 197.5
			BaselineIops:             8333
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i4i.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 468
		Disks: [{
			SizeInGB: 468
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  625
			BaselineThroughputInMBps: 78.125
			BaselineIops:             2500
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "is4gen.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 49152
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 7500
		Disks: [{
			SizeInGB: 7500
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             20000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5d.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 150
		Disks: [{
			SizeInGB: 150
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t4g.small"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  174
			BaselineThroughputInMBps: 21.75
			BaselineIops:             1000
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5d.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 600
		Disks: [{
			SizeInGB: 300
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             18750
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13600
			BaselineThroughputInMBps: 1700.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13600
			MaximumThroughputInMBps:  1700.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5d.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 400
		Disks: [{
			SizeInGB: 400
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             87500
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              87500
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5ad.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2400
		Disks: [{
			SizeInGB: 600
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6gd.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "inf1.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1190
			BaselineThroughputInMBps: 148.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	InferenceAcceleratorInfo: Accelerators: [{
		Count:        1
		Name:         "Inferentia"
		Manufacturer: "AWS"
	}]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i4i.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3750
		Disks: [{
			SizeInGB: 3750
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             20000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13600
			BaselineThroughputInMBps: 1700.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13600
			MaximumThroughputInMBps:  1700.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "g4dn.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 900
		Disks: [{
			SizeInGB: 900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface: 30
		Ipv6AddressesPerInterface: 30
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        4
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 65536
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             5468
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              87500
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  760
			BaselineThroughputInMBps: 95.0
			BaselineIops:             2500
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 16 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 16 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5ad.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 75
		Disks: [{
			SizeInGB: 75
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5a.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  800
			BaselineThroughputInMBps: 100.0
			BaselineIops:             3200
			MaximumBandwidthInMbps:   3170
			MaximumThroughputInMBps:  396.25
			MaximumIops:              13300
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 150
		Disks: [{
			SizeInGB: 150
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  347
			BaselineThroughputInMBps: 43.375
			BaselineIops:             2000
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    6
		Ipv6AddressesPerInterface:    6
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             21875
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              87500
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 40 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 40 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5ad.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 150
		Disks: [{
			SizeInGB: 150
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1085
			BaselineThroughputInMBps: 135.625
			BaselineIops:             6000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 15616
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 475
		Disks: [{
			SizeInGB: 475
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  425
			BaselineThroughputInMBps: 53.125
			BaselineIops:             3000
			MaximumBandwidthInMbps:   425
			MaximumThroughputInMBps:  53.125
			MaximumIops:              3000
		}
		NvmeSupport: "supported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r6gd.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1900
		Disks: [{
			SizeInGB: 1900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5d.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 75
		Disks: [{
			SizeInGB: 75
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6g.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6g.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             18750
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.6
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "inf1.6xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          24
		DefaultCores:          12
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 49152
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	InferenceAcceleratorInfo: Accelerators: [{
		Count:        4
		Name:         "Inferentia"
		Manufacturer: "AWS"
	}]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  5000
			BaselineThroughputInMBps: 625.0
			BaselineIops:             20000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5d.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "u-6tb1.56xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: [
		"on-demand",
	]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.1
	}
	VCpuInfo: {
		DefaultVCpus:          224
		DefaultCores:          224
		DefaultThreadsPerCore: 1
		ValidCores: [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 6291456
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  38000
			BaselineThroughputInMBps: 4750.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   38000
			MaximumThroughputInMBps:  4750.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5d.18xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          72
		DefaultCores:          36
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 147456
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5a.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t2.micro"
	CurrentGeneration: true
	FreeTierEligible:  true
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: ["i386", "x86_64"]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 1024
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Low to Moderate"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Low to Moderate"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5a.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  400
			BaselineThroughputInMBps: 50.0
			BaselineIops:             1600
			MaximumBandwidthInMbps:   3170
			MaximumThroughputInMBps:  396.25
			MaximumIops:              13300
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6gd.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 950
		Disks: [{
			SizeInGB: 950
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6g.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14250
			BaselineThroughputInMBps: 1781.25
			BaselineIops:             50000
			MaximumBandwidthInMbps:   14250
			MaximumThroughputInMBps:  1781.25
			MaximumIops:              50000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6g.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m6i.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5n.9xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          36
		DefaultCores:          18
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface: 30
		Ipv6AddressesPerInterface: 30
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6g.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  630
			BaselineThroughputInMBps: 78.75
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c5.9xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          36
		DefaultCores:          18
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 73728
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5a.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5d.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2400
		Disks: [{
			SizeInGB: 600
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13600
			BaselineThroughputInMBps: 1700.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13600
			MaximumThroughputInMBps:  1700.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5d.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 200
		Disks: [{
			SizeInGB: 200
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             10000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5d.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1200
		Disks: [{
			SizeInGB: 600
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6800
			BaselineThroughputInMBps: 850.0
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6800
			MaximumThroughputInMBps:  850.0
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.6
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 75
		Disks: [{
			SizeInGB: 75
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 31232
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 950
		Disks: [{
			SizeInGB: 950
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  850
			BaselineThroughputInMBps: 106.25
			BaselineIops:             6000
			MaximumBandwidthInMbps:   850
			MaximumThroughputInMBps:  106.25
			MaximumIops:              6000
		}
		NvmeSupport: "supported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.6
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "x2iedn.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 475
		Disks: [{
			SizeInGB: 475
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             32500
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              65000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6800
			BaselineThroughputInMBps: 850.0
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6800
			MaximumThroughputInMBps:  850.0
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5a.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2880
			BaselineThroughputInMBps: 360.0
			BaselineIops:             16000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6i.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3.micro"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1024
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  87
			BaselineThroughputInMBps: 10.875
			BaselineIops:             500
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t4g.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    12
		Ipv6AddressesPerInterface:    12
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r4.xlarge"
	CurrentGeneration: false
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 31232
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  850
			BaselineThroughputInMBps: 106.25
			BaselineIops:             6000
			MaximumBandwidthInMbps:   850
			MaximumThroughputInMBps:  106.25
			MaximumIops:              6000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "u-6tb1.112xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: [
		"on-demand",
	]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.1
	}
	VCpuInfo: {
		DefaultVCpus:          448
		DefaultCores:          224
		DefaultThreadsPerCore: 2
		ValidCores: [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 6291456
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  38000
			BaselineThroughputInMBps: 4750.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   38000
			MaximumThroughputInMBps:  4750.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r4.2xlarge"
	CurrentGeneration: false
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 62464
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1700
			BaselineThroughputInMBps: 212.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   1700
			MaximumThroughputInMBps:  212.5
			MaximumIops:              12000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m5.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             18750
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "g4dn.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 125
		Disks: [{
			SizeInGB: 125
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  950
			BaselineThroughputInMBps: 118.75
			BaselineIops:             3000
			MaximumBandwidthInMbps:   3500
			MaximumThroughputInMBps:  437.5
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        1
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 16384
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5n.18xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          72
		DefaultCores:          36
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3.nano"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 512
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  43
			BaselineThroughputInMBps: 5.375
			BaselineIops:             250
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t4g.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "t4g.micro"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 1024
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  87
			BaselineThroughputInMBps: 10.875
			BaselineIops:             500
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c5a.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 8, 12, 16, 20, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6g.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  630
			BaselineThroughputInMBps: 78.75
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "t3a.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    12
		Ipv6AddressesPerInterface:    12
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             4000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t4g.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5d.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 300
		Disks: [{
			SizeInGB: 300
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "x2iedn.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 4194304
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  80000
			BaselineThroughputInMBps: 10000.0
			BaselineIops:             260000
			MaximumBandwidthInMbps:   80000
			MaximumThroughputInMBps:  10000.0
			MaximumIops:              260000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r5n.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t2.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Low to Moderate"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Low to Moderate"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    12
		Ipv6AddressesPerInterface:    12
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "x2idn.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 2097152
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  80000
			BaselineThroughputInMBps: 10000.0
			BaselineIops:             260000
			MaximumBandwidthInMbps:   80000
			MaximumThroughputInMBps:  10000.0
			MaximumIops:              260000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m5ad.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [12, 18, 24, 36, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13750
			BaselineThroughputInMBps: 1718.75
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13750
			MaximumThroughputInMBps:  1718.75
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i4i.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1875
		Disks: [{
			SizeInGB: 1875
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             10000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gd.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5a.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6g.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14250
			BaselineThroughputInMBps: 1781.25
			BaselineIops:             50000
			MaximumBandwidthInMbps:   14250
			MaximumThroughputInMBps:  1781.25
			MaximumIops:              50000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "x2idn.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1048576
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1900
		Disks: [{
			SizeInGB: 1900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             173333
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              173333
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5a.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 8, 12, 16, 20, 24, 28, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6300
			BaselineThroughputInMBps: 787.5
			BaselineIops:             26700
			MaximumBandwidthInMbps:   6300
			MaximumThroughputInMBps:  787.5
			MaximumIops:              26700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gd.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 474
		Disks: [{
			SizeInGB: 474
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5a.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "im4gn.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 937
		Disks: [{
			SizeInGB: 937
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             5000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "i3en.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1250
		Disks: [{
			SizeInGB: 1250
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  576
			BaselineThroughputInMBps: 72.1
			BaselineIops:             3000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6i.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12.5 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12.5 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3a.nano"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 512
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  45
			BaselineThroughputInMBps: 5.625
			BaselineIops:             250
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  80000
			BaselineThroughputInMBps: 10000.0
			BaselineIops:             350000
			MaximumBandwidthInMbps:   80000
			MaximumThroughputInMBps:  10000.0
			MaximumIops:              350000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "200 Gigabit"
		MaximumNetworkInterfaces: 14
		MaximumNetworkCards:      2
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 170 Gigabit"
			MaximumNetworkInterfaces: 7
		}, {
			NetworkCardIndex:         1
			NetworkPerformance:       "Up to 170 Gigabit"
			MaximumNetworkInterfaces: 7
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 2
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "g4dn.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 900
		Disks: [{
			SizeInGB: 900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface: 15
		Ipv6AddressesPerInterface: 15
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        1
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 16384
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 118
		Disks: [{
			SizeInGB: 118
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  630
			BaselineThroughputInMBps: 78.75
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6g.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m5ad.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2400
		Disks: [{
			SizeInGB: 600
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             43750
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              87500
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 300
		Disks: [{
			SizeInGB: 300
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5ad.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 600
		Disks: [{
			SizeInGB: 300
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2880
			BaselineThroughputInMBps: 360.0
			BaselineIops:             16000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6gd.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1900
		Disks: [{
			SizeInGB: 1900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5a.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [12, 18, 24, 36, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13750
			BaselineThroughputInMBps: 1718.75
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13750
			MaximumThroughputInMBps:  1718.75
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             10000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6gd.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6gn.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1235
			BaselineThroughputInMBps: 154.375
			BaselineIops:             5000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "i4i.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1048576
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 30000
		Disks: [{
			SizeInGB: 3750
			Count:    8
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 300
		Disks: [{
			SizeInGB: 300
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5a.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 8, 12, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  3170
			BaselineThroughputInMBps: 396.25
			BaselineIops:             13300
			MaximumBandwidthInMbps:   3170
			MaximumThroughputInMBps:  396.25
			MaximumIops:              13300
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 62464
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1900
		Disks: [{
			SizeInGB: 1900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1700
			BaselineThroughputInMBps: 212.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   1700
			MaximumThroughputInMBps:  212.5
			MaximumIops:              12000
		}
		NvmeSupport: "supported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "x2iedn.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 3145728
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2850
		Disks: [{
			SizeInGB: 1425
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  60000
			BaselineThroughputInMBps: 7500.0
			BaselineIops:             195000
			MaximumBandwidthInMbps:   60000
			MaximumThroughputInMBps:  7500.0
			MaximumIops:              195000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r4.4xlarge"
	CurrentGeneration: false
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 124928
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  3500
			BaselineThroughputInMBps: 437.5
			BaselineIops:             18750
			MaximumBandwidthInMbps:   3500
			MaximumThroughputInMBps:  437.5
			MaximumIops:              18750
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c6g.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6i.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t2.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Moderate"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Moderate"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "is4gen.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 6144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 937
		Disks: [{
			SizeInGB: 937
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  625
			BaselineThroughputInMBps: 78.125
			BaselineIops:             2500
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "i3.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 499712
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 15200
		Disks: [{
			SizeInGB: 1900
			Count:    8
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14000
			BaselineThroughputInMBps: 1750.0
			BaselineIops:             65000
			MaximumBandwidthInMbps:   14000
			MaximumThroughputInMBps:  1750.0
			MaximumIops:              65000
		}
		NvmeSupport: "supported"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m6g.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  315
			BaselineThroughputInMBps: 39.375
			BaselineIops:             2500
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "is4gen.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 12288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1875
		Disks: [{
			SizeInGB: 1875
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             5000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "d2.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: ["ebs", "instance-store"]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.4
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 124928
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 24576
		Disks: [{
			SizeInGB: 2048
			Count:    12
			Type:     "hdd"
		}]
		NvmeSupport:       "unsupported"
		EncryptionSupport: "unsupported"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2000
			BaselineThroughputInMBps: 250.0
			BaselineIops:             16000
			MaximumBandwidthInMbps:   2000
			MaximumThroughputInMBps:  250.0
			MaximumIops:              16000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "High"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "High"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "inf1.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 11
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 11
		}]
		Ipv4AddressesPerInterface: 30
		Ipv6AddressesPerInterface: 30
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	InferenceAcceleratorInfo: Accelerators: [{
		Count:        16
		Name:         "Inferentia"
		Manufacturer: "AWS"
	}]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "g4dn.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 900
		Disks: [{
			SizeInGB: 900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface: 15
		Ipv6AddressesPerInterface: 15
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        1
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 16384
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6i.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1048576
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r4.8xlarge"
	CurrentGeneration: false
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 249856
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  7000
			BaselineThroughputInMBps: 875.0
			BaselineIops:             37500
			MaximumBandwidthInMbps:   7000
			MaximumThroughputInMBps:  875.0
			MaximumIops:              37500
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "t3.small"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  174
			BaselineThroughputInMBps: 21.75
			BaselineIops:             1000
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  15000
			BaselineThroughputInMBps: 1875.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   15000
			MaximumThroughputInMBps:  1875.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "18.75 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "18.75 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gd.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 950
		Disks: [{
			SizeInGB: 950
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6gd.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 474
		Disks: [{
			SizeInGB: 474
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6g.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6i.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  15000
			BaselineThroughputInMBps: 1875.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   15000
			MaximumThroughputInMBps:  1875.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "18.75 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "18.75 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "x2iedn.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4194304
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  80000
			BaselineThroughputInMBps: 10000.0
			BaselineIops:             260000
			MaximumBandwidthInMbps:   80000
			MaximumThroughputInMBps:  10000.0
			MaximumIops:              260000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 124928
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  3500
			BaselineThroughputInMBps: 437.5
			BaselineIops:             16000
			MaximumBandwidthInMbps:   3500
			MaximumThroughputInMBps:  437.5
			MaximumIops:              16000
		}
		NvmeSupport: "supported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "is4gen.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 30000
		Disks: [{
			SizeInGB: 7500
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "x2idn.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 2097152
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3800
		Disks: [{
			SizeInGB: 1900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  80000
			BaselineThroughputInMBps: 10000.0
			BaselineIops:             260000
			MaximumBandwidthInMbps:   80000
			MaximumThroughputInMBps:  10000.0
			MaximumIops:              260000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3en.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 5000
		Disks: [{
			SizeInGB: 2500
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2307
			BaselineThroughputInMBps: 288.3875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5d.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 600
		Disks: [{
			SizeInGB: 300
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             18750
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6gd.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 118
		Disks: [{
			SizeInGB: 118
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  630
			BaselineThroughputInMBps: 78.75
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "x2iedn.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 2097152
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1900
		Disks: [{
			SizeInGB: 1900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             130000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              130000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "t2.nano"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: [
		"on-demand",
	]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: ["i386", "x86_64"]
		SustainedClockSpeedInGhz: 2.4
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 512
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Low to Moderate"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Low to Moderate"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "i3.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          72
		DefaultCores:          36
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 15200
		Disks: [{
			SizeInGB: 1900
			Count:    8
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r5dn.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 600
		Disks: [{
			SizeInGB: 300
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             18750
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 249856
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 7600
		Disks: [{
			SizeInGB: 1900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  7000
			BaselineThroughputInMBps: 875.0
			BaselineIops:             32500
			MaximumBandwidthInMbps:   7000
			MaximumThroughputInMBps:  875.0
			MaximumIops:              32500
		}
		NvmeSupport: "supported"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "t2.small"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: ["i386", "x86_64"]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Low to Moderate"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Low to Moderate"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "im4gn.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          16
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 7500
		Disks: [{
			SizeInGB: 7500
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c5n.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          72
		DefaultCores:          36
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r6g.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6i.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 1048576
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "50 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "50 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m5a.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1085
			BaselineThroughputInMBps: 135.625
			BaselineIops:             6000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6g.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "im4gn.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 30000
		Disks: [{
			SizeInGB: 7500
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  40000
			BaselineThroughputInMBps: 5000.0
			BaselineIops:             160000
			MaximumBandwidthInMbps:   40000
			MaximumThroughputInMBps:  5000.0
			MaximumIops:              160000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "i3en.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2500
		Disks: [{
			SizeInGB: 2500
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1153
			BaselineThroughputInMBps: 144.2
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gd.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          32
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1900
		Disks: [{
			SizeInGB: 1900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5ad.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 150
		Disks: [{
			SizeInGB: 150
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1085
			BaselineThroughputInMBps: 135.625
			BaselineIops:             6000
			MaximumBandwidthInMbps:   2880
			MaximumThroughputInMBps:  360.0
			MaximumIops:              16000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gn.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5d.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 1800
		Disks: [{
			SizeInGB: 900
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6800
			BaselineThroughputInMBps: 850.0
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6800
			MaximumThroughputInMBps:  850.0
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "x2iedn.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1048576
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 950
		Disks: [{
			SizeInGB: 950
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  20000
			BaselineThroughputInMBps: 2500.0
			BaselineIops:             65000
			MaximumBandwidthInMbps:   20000
			MaximumThroughputInMBps:  2500.0
			MaximumIops:              65000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6g.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "x1.32xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: ["ebs", "instance-store"]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
		ValidCores: [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1998848
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3840
		Disks: [{
			SizeInGB: 1920
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "unsupported"
		EncryptionSupport: "unsupported"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14000
			BaselineThroughputInMBps: 1750.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   14000
			MaximumThroughputInMBps:  1750.0
			MaximumIops:              80000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "t2.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: ["i386", "x86_64"]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          2
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "unsupported"
		EncryptionSupport:   "supported"
		NvmeSupport:         "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Low to Moderate"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Low to Moderate"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    6
		Ipv6AddressesPerInterface:    6
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r4.large"
	CurrentGeneration: false
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.3
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 15616
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  425
			BaselineThroughputInMBps: 53.125
			BaselineIops:             3000
			MaximumBandwidthInMbps:   425
			MaximumThroughputInMBps:  53.125
			MaximumIops:              3000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "supported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "r5.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2300
			BaselineThroughputInMBps: 287.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 524288
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2400
		Disks: [{
			SizeInGB: 600
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13600
			BaselineThroughputInMBps: 1700.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13600
			MaximumThroughputInMBps:  1700.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "75 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "75 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6i.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             6000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m6i.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             6000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i4i.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 937
		Disks: [{
			SizeInGB: 937
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1250
			BaselineThroughputInMBps: 156.25
			BaselineIops:             5000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5a.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.3
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 4096
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  200
			BaselineThroughputInMBps: 25.0
			BaselineIops:             800
			MaximumBandwidthInMbps:   3170
			MaximumThroughputInMBps:  396.25
			MaximumIops:              13300
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5a.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5.16xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          32
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13600
			BaselineThroughputInMBps: 1700.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13600
			MaximumThroughputInMBps:  1700.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6g.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          4
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1188
			BaselineThroughputInMBps: 148.5
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6g.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  315
			BaselineThroughputInMBps: 39.375
			BaselineIops:             2500
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r6gd.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 393216
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2850
		Disks: [{
			SizeInGB: 1425
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14250
			BaselineThroughputInMBps: 1781.25
			BaselineIops:             50000
			MaximumBandwidthInMbps:   14250
			MaximumThroughputInMBps:  1781.25
			MaximumIops:              50000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "m6g.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          8
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2375
			BaselineThroughputInMBps: 296.875
			BaselineIops:             12000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c6gd.medium"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          1
		DefaultCores:          1
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 2048
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 59
		Disks: [{
			SizeInGB: 59
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  315
			BaselineThroughputInMBps: 39.375
			BaselineIops:             2500
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    4
		Ipv6AddressesPerInterface:    4
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "c5d.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 8192
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 100
		Disks: [{
			SizeInGB: 100
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 10 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 10 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5a.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [12, 18, 24, 36, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  13570
			BaselineThroughputInMBps: 1696.25
			BaselineIops:             60000
			MaximumBandwidthInMbps:   13570
			MaximumThroughputInMBps:  1696.25
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r6i.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  2500
			BaselineThroughputInMBps: 312.5
			BaselineIops:             12000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 12.5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 12.5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5d.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5n.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 10752
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6in.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          128
		DefaultCores:          64
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  80000
			BaselineThroughputInMBps: 10000.0
			BaselineIops:             350000
			MaximumBandwidthInMbps:   80000
			MaximumThroughputInMBps:  10000.0
			MaximumIops:              350000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "200 Gigabit"
		MaximumNetworkInterfaces: 14
		MaximumNetworkCards:      2
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 170 Gigabit"
			MaximumNetworkInterfaces: 7
		}, {
			NetworkCardIndex:         1
			NetworkPerformance:       "Up to 170 Gigabit"
			MaximumNetworkInterfaces: 7
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 2
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "g4dn.4xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          16
		DefaultCores:          8
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 65536
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 225
		Disks: [{
			SizeInGB: 225
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        1
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 16384
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "d2.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: ["ebs", "instance-store"]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "xen"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.4
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 31232
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 6144
		Disks: [{
			SizeInGB: 2048
			Count:    3
			Type:     "hdd"
		}]
		NvmeSupport:       "unsupported"
		EncryptionSupport: "unsupported"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  750
			BaselineThroughputInMBps: 93.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   750
			MaximumThroughputInMBps:  93.75
			MaximumIops:              6000
		}
		NvmeSupport: "unsupported"
	}
	NetworkInfo: {
		NetworkPerformance:       "Moderate"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Moderate"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "unsupported"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "m6i.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  15000
			BaselineThroughputInMBps: 1875.0
			BaselineIops:             60000
			MaximumBandwidthInMbps:   15000
			MaximumThroughputInMBps:  1875.0
			MaximumIops:              60000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "18.75 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "18.75 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3a.xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          4
		DefaultCores:          2
		DefaultThreadsPerCore: 2
		ValidCores: [
			2,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  695
			BaselineThroughputInMBps: 86.875
			BaselineIops:             4000
			MaximumBandwidthInMbps:   2780
			MaximumThroughputInMBps:  347.5
			MaximumIops:              15700
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 4
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 4
		}]
		Ipv4AddressesPerInterface:    15
		Ipv6AddressesPerInterface:    15
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "m5a.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          24
		DefaultThreadsPerCore: 2
		ValidCores: [6, 12, 18, 24]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  6780
			BaselineThroughputInMBps: 847.5
			BaselineIops:             30000
			MaximumBandwidthInMbps:   6780
			MaximumThroughputInMBps:  847.5
			MaximumIops:              30000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "10 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "10 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5dn.24xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 3600
		Disks: [{
			SizeInGB: 900
			Count:    4
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "t3a.micro"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.2
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 1024
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  90
			BaselineThroughputInMBps: 11.25
			BaselineIops:             500
			MaximumBandwidthInMbps:   2085
			MaximumThroughputInMBps:  260.625
			MaximumIops:              11800
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 5 Gigabit"
		MaximumNetworkInterfaces: 2
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 5 Gigabit"
			MaximumNetworkInterfaces: 2
		}]
		Ipv4AddressesPerInterface:    2
		Ipv6AddressesPerInterface:    2
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: true
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3en.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 60000
		Disks: [{
			SizeInGB: 7500
			Count:    8
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c6g.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          64
		DefaultCores:          64
		DefaultThreadsPerCore: 1
	}
	MemoryInfo: SizeInMiB: 131072
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "g4dn.2xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          8
		DefaultCores:          4
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 32768
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 225
		Disks: [{
			SizeInGB: 225
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  1150
			BaselineThroughputInMBps: 143.75
			BaselineIops:             6000
			MaximumBandwidthInMbps:   3500
			MaximumThroughputInMBps:  437.5
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	GpuInfo: {
		Gpus: [{
			Name:         "T4"
			Manufacturer: "NVIDIA"
			Count:        1
			MemoryInfo: SizeInMiB: 16384
		}]
		TotalGpuMemoryInMiB: 16384
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       false
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c6gd.12xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"arm64",
		]
		SustainedClockSpeedInGhz: 2.5
	}
	VCpuInfo: {
		DefaultVCpus:          48
		DefaultCores:          48
		DefaultThreadsPerCore: 1
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
		ValidThreadsPerCore: [
			1,
		]
	}
	MemoryInfo: SizeInMiB: 98304
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 2850
		Disks: [{
			SizeInGB: 1425
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  14250
			BaselineThroughputInMBps: 1781.25
			BaselineIops:             50000
			MaximumBandwidthInMbps:   14250
			MaximumThroughputInMBps:  1781.25
			MaximumIops:              50000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "20 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "20 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: [
		"uefi",
	]
}, {
	InstanceType:      "r5n.metal"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal: true
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          96
		DefaultCores:          48
		DefaultThreadsPerCore: 2
	}
	MemoryInfo: SizeInMiB: 786432
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "100 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "100 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface: 50
		Ipv6AddressesPerInterface: 50
		Ipv6Supported:             true
		EnaSupport:                "required"
		EfaSupported:              true
		EfaInfo: MaximumEfaInterfaces: 1
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: [
		"legacy-bios",
	]
}, {
	InstanceType:      "c5d.9xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          36
		DefaultCores:          18
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12, 14, 16, 18]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 73728
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 900
		Disks: [{
			SizeInGB: 900
			Count:    1
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  9500
			BaselineThroughputInMBps: 1187.5
			BaselineIops:             40000
			MaximumBandwidthInMbps:   9500
			MaximumThroughputInMBps:  1187.5
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "12 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "12 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i4i.8xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.5
	}
	VCpuInfo: {
		DefaultVCpus:          32
		DefaultCores:          16
		DefaultThreadsPerCore: 2
		ValidCores: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 262144
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 7500
		Disks: [{
			SizeInGB: 3750
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  10000
			BaselineThroughputInMBps: 1250.0
			BaselineIops:             40000
			MaximumBandwidthInMbps:   10000
			MaximumThroughputInMBps:  1250.0
			MaximumIops:              40000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "18.75 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "18.75 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "i3en.6xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          24
		DefaultCores:          12
		DefaultThreadsPerCore: 2
		ValidCores: [2, 4, 6, 8, 10, 12]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 196608
	InstanceStorageSupported: true
	InstanceStorageInfo: {
		TotalSizeInGB: 15000
		Disks: [{
			SizeInGB: 7500
			Count:    2
			Type:     "ssd"
		}]
		NvmeSupport:       "required"
		EncryptionSupport: "required"
	}
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  4750
			BaselineThroughputInMBps: 593.75
			BaselineIops:             20000
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              20000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 8
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 8
		}]
		Ipv4AddressesPerInterface:    30
		Ipv6AddressesPerInterface:    30
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         false
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "c5.18xlarge"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.4
	}
	VCpuInfo: {
		DefaultVCpus:          72
		DefaultCores:          36
		DefaultThreadsPerCore: 2
		ValidCores: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 147456
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  19000
			BaselineThroughputInMBps: 2375.0
			BaselineIops:             80000
			MaximumBandwidthInMbps:   19000
			MaximumThroughputInMBps:  2375.0
			MaximumIops:              80000
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "25 Gigabit"
		MaximumNetworkInterfaces: 15
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "25 Gigabit"
			MaximumNetworkInterfaces: 15
		}]
		Ipv4AddressesPerInterface:    50
		Ipv6AddressesPerInterface:    50
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: false
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          true
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}, {
	InstanceType:      "r5n.large"
	CurrentGeneration: true
	FreeTierEligible:  false
	SupportedUsageClasses: ["on-demand", "spot"]
	SupportedRootDeviceTypes: [
		"ebs",
	]
	SupportedVirtualizationTypes: [
		"hvm",
	]
	BareMetal:  false
	Hypervisor: "nitro"
	ProcessorInfo: {
		SupportedArchitectures: [
			"x86_64",
		]
		SustainedClockSpeedInGhz: 3.1
	}
	VCpuInfo: {
		DefaultVCpus:          2
		DefaultCores:          1
		DefaultThreadsPerCore: 2
		ValidCores: [
			1,
		]
		ValidThreadsPerCore: [1, 2]
	}
	MemoryInfo: SizeInMiB: 16384
	InstanceStorageSupported: false
	EbsInfo: {
		EbsOptimizedSupport: "default"
		EncryptionSupport:   "supported"
		EbsOptimizedInfo: {
			BaselineBandwidthInMbps:  650
			BaselineThroughputInMBps: 81.25
			BaselineIops:             3600
			MaximumBandwidthInMbps:   4750
			MaximumThroughputInMBps:  593.75
			MaximumIops:              18750
		}
		NvmeSupport: "required"
	}
	NetworkInfo: {
		NetworkPerformance:       "Up to 25 Gigabit"
		MaximumNetworkInterfaces: 3
		MaximumNetworkCards:      1
		DefaultNetworkCardIndex:  0
		NetworkCards: [{
			NetworkCardIndex:         0
			NetworkPerformance:       "Up to 25 Gigabit"
			MaximumNetworkInterfaces: 3
		}]
		Ipv4AddressesPerInterface:    10
		Ipv6AddressesPerInterface:    10
		Ipv6Supported:                true
		EnaSupport:                   "required"
		EfaSupported:                 false
		EncryptionInTransitSupported: true
	}
	PlacementGroupInfo: SupportedStrategies: ["cluster", "partition", "spread"]
	HibernationSupported:          false
	BurstablePerformanceSupported: false
	DedicatedHostsSupported:       true
	AutoRecoverySupported:         true
	SupportedBootModes: ["legacy-bios", "uefi"]
}]
