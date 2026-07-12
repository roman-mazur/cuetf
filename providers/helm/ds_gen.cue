package helm

import (
	"github.com/roman-mazur/cuetf"
	"github.com/roman-mazur/cuetf/providers/helm/data"
)

#Terraform: {
	#helmPrefix: string
	_#ds: "\(#helmPrefix)_template": close({data.helm_template & cuetf.MetaArgs})

}
