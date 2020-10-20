# Env source etmek için dosya oluşturma
cat << EOF > envvariables
export namespaces="oktay"
export app="istioproject"
export name="istioproject"
EOF

# Source etme
source envvariables
