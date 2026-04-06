package helm

import "github.com/roman-mazur/cuetf/providers/helm/res"

#Terraform: {
	#helmPrefix: string
	_#res: "\(#helmPrefix)_release": res.#helm_release

}
