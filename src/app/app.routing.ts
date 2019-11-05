import { ModuleWithProviders } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { homeComponent } from './home/home.component';
import { loginComponent } from './login/login.component';
import { PerfilComponent } from './perfil/perfil.component';

const appRoutes: Routes = [

{path: '',component: homeComponent},
{path: 'login',component: loginComponent},
{path: 'perfil',component: PerfilComponent},
{path: '**',component: homeComponent}

]

export const appRoutingProviders:any[] = [];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);





export class AppRoutingModule { } 