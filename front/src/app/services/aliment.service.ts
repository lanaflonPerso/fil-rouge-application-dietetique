import { Injectable, OnInit } from '@angular/core';
import { Aliment } from '../models/business/aliment';
import LIST_ALIMENTS from '../models/datas/aliments';
import { Category } from '../models/business/category';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

const httpOptions = {
  headers: new HttpHeaders( {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    })
};

@Injectable({
  providedIn: 'root'
})

export class AlimentService {

  /**
   * Url to access to the WebService
   */
  private restUrl = 'http://localhost:8090/aliment';

  constructor(private http: HttpClient) {

  }
/**
 * Call WS to update one aliment
 *
 * @param {Aliment} aliment Params of the aliment to update
 * @returns Observable<Aliment>
 */
  public updateAliment(aliment: Aliment): Observable<Aliment> {
    return this.http.put<Aliment>(this.restUrl, aliment, httpOptions);
  }
/**
 * Call WS to create a new aliment
 *
 * @param {Aliment} aliment Params of the aliment to create
 * @returns Observable<Aliment>
 */
  public addAliment(aliment: Aliment): Observable<Aliment> {
    return this.http.post<Aliment>(this.restUrl, aliment, httpOptions);
  }
/**
 * Call WS to get the list of Aliments
 *
 * @returns Observable<Aliment>
 */
  public getAliments(): Observable<Aliment[]> {
    return this.http.get<Aliment[]>(this.restUrl);
  }
/**
 * Call WS to get a specific aliment with the id number
 *
 * @param {number} id : id of the aliment to get
 * @example
 * getAliment(1)
 * @returns Observable<Aliment>
 */
  public getAliment(id: number): Observable<Aliment> {
    return this.http.get<Aliment>(this.restUrl + '/' + id);
  }
/**
 * Call WS to delete a specific aliment with the id number
 *
 * @param {number} id : id of the aliment to delete
 * @example
 * deleteAliment(1)
 * @returns Observable<Aliment>
 */
  public deleteAliment(id: number): Observable<Aliment> {
    return this.http.delete<Aliment>(this.restUrl + '/' + id);
  }

  /**
   * Call a WS to upload a file
   *
   * @param file file to upload
   */
  public upload(file) {
    const urlCloudinary = 'https://api.cloudinary.com/v1_1/dfexmhgqi/image/upload';
    const formData = new FormData();
    formData.append('file', file);
    formData.append('upload_preset', 'rhd8pini');
    return this.http.post<any>(urlCloudinary, formData);
  }
}
