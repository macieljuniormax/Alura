import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HeaderComponent } from './shared/header/header.component';
import { BannerComponent } from './shared/banner/banner.component';
import { CardComponent } from './shared/card/card.component';
import { FooterComponent } from './shared/footer/footer.component';
import { ContainerComponent } from './shared/container/container.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, HeaderComponent, BannerComponent, CardComponent, FooterComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'jornada-milhas';
}
