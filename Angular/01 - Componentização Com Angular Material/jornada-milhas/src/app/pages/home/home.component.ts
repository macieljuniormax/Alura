import { Component } from '@angular/core';
import { BannerComponent } from "../../shared/banner/banner.component";
import { ContainerComponent } from '../../shared/container/container.component';
import { CardBuscaComponent } from "../../shared/card-busca/card-busca.component";
import { CardDepoimentoComponent } from "../../shared/card-depoimento/card-depoimento.component";
import { FormBuscaComponent } from "../../shared/form-busca/form-busca.component";

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [BannerComponent, ContainerComponent, CardBuscaComponent, CardDepoimentoComponent, FormBuscaComponent],
  templateUrl: './home.component.html',
  styleUrl: './home.component.scss'
})
export class HomeComponent {

}
