import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AlimentDetailComponent } from './aliment-detail.component';

describe('AlimentDetailComponent', () => {
  let component: AlimentDetailComponent;
  let fixture: ComponentFixture<AlimentDetailComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AlimentDetailComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AlimentDetailComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
