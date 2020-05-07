import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router, Params} from '@angular/router';

@Component({
  selector: 'horaire',
  templateUrl: './horaire.component.html'
})

export class HoraireComponent {

  constructor(private route: ActivatedRoute, private router: Router) {}
  ngOnInit(): void {

  }
}
