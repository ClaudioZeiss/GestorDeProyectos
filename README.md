--> Debo tener a mi disposición un formulario para crear proyectos. (2 Puntos)
        index.html.erb

--> El proyecto debe tener un nombre, una descripción, una fecha de comienzo, una de término y un estado. (1 Punto)

        <form method="get" >
            <div class="form-group">
                <label for="name">Nombre : </label>
                <input name="name" cols="80">
            </div>
            <br>
            <div class="form-group">
                <label for="description">Descripcion :</label>
                <br>
                <textarea name="description" rows="7" cols="50"> </textarea>
            </div>
            <br>    
            <div class="form-group">
                <label for="start">Fecha Inicio :</label>
                <input type="date" id="timeIni" name="timeIni" value="2022-04-19" min="2022-01-01" max="2099-12-31">
            </div>    
            <br>
            <div class="form-group">
                <label for="end">Fecha Fin :</label>
                <input type="date" id="timeEnd" name="timeEnd" value="2022-04-19" min="2022-01-01" max="2099-12-31">
            </div>    
            <br>
            <div class="form-group">
                <label for="start">Estado :</label>
                <select name="state">
                    <option value="propuesta" selected >propuesta</option>
                    <option value="en progreso" >en progreso</option>
                    <option value="terminado">terminado</option>
                </select>        
            </div>    
            <br>
            <button type="submit" value="grabar" class="btn btn-primary">GRABAR</button>
        </form>
        
--> El campo estado(state) refleja el estado actual(propuesta, en progreso, terminado).
Este estado por defecto debe ser propuesta. (1 Punto)

        class AddStateToDbproject < ActiveRecord::Migration[7.0]
            def change
                add_column :dbprojects, :state, :string, default:'propuesta'
            end
        end

--> Debo tener un vista donde pueda ver todos los proyectos.(2 Puntos)

        vista.html.erb

--> En esa vista debe poder filtrar por proyecto terminado, en progreso o agendado. (2 Puntos)

        vista.html.erb

--> Se debe validar la presencia de los campos nombre, descripción y estado. (1 Punto)

        class Dbproject < ApplicationRecord
            validates :name, presence: true
            validates :state, presence: true
            validates :description, presence: true
        end

--> El proyecto debe ser subido a heroku y se debe ingresar el link para la evaluación. (1 Punto)



--> Repositorio en GitHub
        https://github.com/ClaudioZeiss/GestorDeProyectos





