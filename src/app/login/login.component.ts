import {Component} from '@angular/core';



@Component({
	selector: 'login',
	templateUrl: './login.component.html'
	styleUrls: ['./login.css']
})



export class loginComponent{
	public titulo = 'login';
	

	save(){

	}

	private pre($event){
		$event.preventDefault();
		console.log("se detuvo");
    
}
		

	}