import { Component, Input } from '@angular/core';
import { ContainerComponent } from "../container/container.component";
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-banner',
  standalone: true,
  imports: [ContainerComponent, CommonModule],
  templateUrl: './banner.component.html',
  styleUrl: './banner.component.scss'
})

export class BannerComponent {
  private _src: string = '';
  private _alt: string = '';

  @Input()
  public get src(): string {
    return this._src;
  }


  public set src(value: string) {
    this._src = value;
  }

  @Input()
  public get alt(): string {
    return this._alt;
  }

  public set alt(value: string) {
    this._alt = value;
  }
}
