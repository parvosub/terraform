resource "local_file" "pet" {
    filename = "/home/popvm/terraform/pets.txt"
    content = "I love Ella"
}
