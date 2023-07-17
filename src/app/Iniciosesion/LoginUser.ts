import { Component, OnInit } from '@angular/core';
//import {Ejercicio} from '../ejercicio';
//import {EjercicioService} from '../ejercicio.service'

@Component({
    selector: 'app-ejercicios',
    templateUrl: './LoginUser.html'    
  })
export class Iniciosesion implements OnInit {
  value: string | undefined;
    ngOnInit(): void {
        console.log("----Componente Panel[ngOnInit] ---");
        //this.getEjercicios();
      }
  
}