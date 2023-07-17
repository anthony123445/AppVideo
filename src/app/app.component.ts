import { Component,OnInit } from '@angular/core';
import { Router } from '@angular/router';

interface City {
  name: string;
  code: string;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {


  //title = 'AppVideo';  

  title = 'NYHOM';  

  cities: City[] | undefined;

  selectedCity: City | undefined;

  ngOnInit() {
      this.cities = [
          { name: 'Español', code: 'NY' },
          { name: 'Ingles', code: 'RM' }
         
      ];
  }

}



