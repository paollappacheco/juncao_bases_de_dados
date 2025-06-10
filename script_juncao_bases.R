install.packages("usethis")
library(usethis)
use_git_config(user.name = "paollappacheco", user.email = "paollapp@id.uff.br")
usethis::create_github_token()
gitcreds::gitcreds_set()


# Importando os dados
library(readxl)
tuberculose <- read_excel("C:/Users/paoll/Downloads/atividade_juncao_bases/Base_tuberculose.xls")

indicadores = read_excel("C:/Users/paoll/Downloads/atividade_juncao_bases/Base_indicadores.xls")
tuberculose
indicadores
View(tuberculose)
View(indicadores)

# join com os dados
library(dplyr)
tub_ind = left_join(tuberculose, indicadores, by = c("Municipio", "CODIBGE_com6"))
tub_ind 
View(tub_ind)

