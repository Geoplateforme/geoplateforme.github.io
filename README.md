# Site de documentation de l'Entrepôt Géoplateforme

## Compilations

* mdkocs : `mkdocs build`
* docker : `docker build -t geoplateforme/index .`

## Déploiement du site

* mkdocs : 
    * `mkdocs serve`
    * Accès : http://localhost:8000/

* docker :
    * `docker run -p 8000:80 geoplateforme/index`
    * Accès : http://localhost:8000/
