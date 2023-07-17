import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Iniciosesion } from './LoginUser';

describe('Iniciosesion', () => {
  let component: Iniciosesion;
  let fixture: ComponentFixture<Iniciosesion>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Iniciosesion ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Iniciosesion);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
