import { Component, OnInit } from '@angular/core';
//import {Ejercicio} from '../ejercicio';
//import {EjercicioService} from '../ejercicio.service'

@Component({
  selector: 'app-panel',
  templateUrl: './panel.component.html',
  styleUrls: ['./panel.component.css']
  
})
export class PanelComponent implements OnInit {
    
    title = 'AppVideo';  

  ngOnInit(): void {
    console.log("----Componente Panel[ngOnInit] ---");
   // this.getEjercicios();
  }


}
