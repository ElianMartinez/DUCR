import {Component} from '@angular/core';
import { FormBuilder, FormGroup, Validators} from '@angular/forms';


@Component({
	selector: 'login',
	templateUrl: './login.component.html',
	styleUrls: ['./login.css']
})




export class loginComponent{
	myForm: FormGroup;
	constructor( public fb: FormBuilder)
	{
		this.myForm = this.fb.group({
			name: ['', [Validators.required]],
			password: ['', [Validators.required]],
		  });
		

	}

	 ngOnInit() { }
	 
 saveData(){
    console.log(this.myForm.value);
  }
		

	}