package analysis

import "strings"

// Select specific versions to compare the content.
cmp: {
	"2025-08-04": "2024-10-13"
	"2025-09-21": "2025-08-04"
	"2025-09-28": "2025-09-21"
}

#SummaryData: {
	history: _

	for name, data in history {
		let date = strings.TrimSuffix(name, ".json")
		summary: count: (date): len(data)

		summary: _types: (date): {
			for _, info in data {
				(info.InstanceType): {
					_fullData: info

					mem:    info.MemoryInfo.SizeInMiB
					cpuCnt: info.VCpuInfo.DefaultVCpus
					if info.ProcessorInfo.SustainedClockSpeedInGhz != _|_ {
						cpuClock: info.ProcessorInfo.SustainedClockSpeedInGhz
					}
				}
			}
		}

		summary: manufacturers: (date): cpu: {
			for _, info in data {
				if info.ProcessorInfo.Manufacturer != _|_ {
					(info.ProcessorInfo.Manufacturer): true
				}
			}
		}

		summary: manufacturers: (date): gpu: {
			for _, info in data {
				if info.GpuInfo.Gpus != _|_ {
					for _, g in info.GpuInfo.Gpus {
						(g.Manufacturer): true
					}
				}
			}
		}

		if cmp[date] != _|_ {
			let prevDate = cmp[date]

			summary: newTypes: (date): {
				if cmp[date] != _|_ {
					for name, info in summary._types[date] if summary._types[prevDate][name] == _|_ {
						(name): info
					}
				}
			}

			summary: diffs: "\(prevDate)..\(date)": {
				for key, info in summary._types[prevDate] {
					if (info._fullData & summary._types[date][key]._fullData) == _|_ {
						if summary._types[date][key] != _|_ {
							_after: (key): summary._types[date][key]._fullData
							for k, v in info._fullData {
								if (v & (string | int | float | bool)) != _|_ {
									if v != _after[key][k] {
										"\(k):\(v)->\(_after[key][k])": (key): _after[key][k]
									}
								}
							}
						}
						if summary._types[date][key] == _|_ {
							removed: (key): true
						}
					}
				}
			}
		}
	}
}
