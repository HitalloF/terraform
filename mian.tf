variable "teste" {
    default = {
        arquivo_1 = "primeiro arquivo",
        arquivo_2 = <<E0F
Esse é o conteudo do
segundo arquivo 
E0F
    }
}

resource "local_file" "count_map" {
    for_each = var.teste

    filename = each.key
    content = each.value
}

