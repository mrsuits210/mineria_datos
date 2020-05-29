setwd('C:/Users/Adrake/Desktop/Examen R')
movies <- read.csv("Project-Data.csv")
library(ggplot2)

head(movies)
str(movies)

#Filtrando la data 

genref <- movies[movies$Genre %in% c("action", "adventure", "animation", "comedy", "drama"),]

filtro <- genref[genref$Studio %in% c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB"),]

#cargamos la data al diagrama
ploting <- ggplot(data=filtro, aes(x=Genre, y=Gross...US ))

#modelado del diagrama
ploting + geom_jitter(aes(size=Budget...mill.,color=Studio)) + 
geom_boxplot(outlier.colour = NA, alpha=0.3) + 
  
  #personalizacion de los textos puro diseño y color
  theme (text = element_text(size=8)) + # Tamaño de fuente del grafico por defecto
  ggtitle ("Domestic Gross % by Genre") + # Título del gráfico
  theme (plot.title = element_text(size=rel(2), #Tamaño relativo de la letra del título
                                   vjust=2, #Justificación vertical, para separarlo del gráfico
                                   face="bold", #Letra negrilla. Otras posibilidades "plain", "italic", "bold" y "bold.italic"
                                   color="black", #Color del texto
                                   lineheight=1.5)) + #Separación entre líneas
  labs(x = "Genre",y = "Grass % US") + # Etiquetas o títulos de los ejes
  theme(axis.title.x = element_text(face="bold", vjust=-0.5, colour="purple", size=rel(1.5))) +
  theme(axis.title.y = element_text(face="bold", vjust=1.5, colour="purple", size=rel(1.5))) 


