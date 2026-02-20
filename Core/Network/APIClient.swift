//
//  APIClient.swift
//  technicalTest
//
//  Created by Jaqueline Sanchez on 19/02/26.
//

import UIKit

protocol APIClientProtocol {
    func request<T: Decodable>(endpoint: String, type: T.Type,completion:@escaping (Result<T, NetworkError>) -> Void)
}

final class APIClient: APIClientProtocol {
    
    static let shred = APIClient()
    private let session: URLSession
   
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    func request<T>(endpoint: String, type: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable {
        
        guard let url = URL(string: endpoint) else {
            completion(.failure(.invalidURL))
            return
        }
        
        session.dataTask(with: url) { data, response, error in
            
            if error != nil {
                DispatchQueue.main.async {
                    completion(.failure(.serverError))
                }
                return
            }
            
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(.failure(.noDara))
                }
                return
            }
            
            do {
                let decode = try JSONDecoder().decode(T.self, from: data)
                DispatchQueue.main.async {
                    completion(.success(decode))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(.decodingError))
                }
            }
        }.resume()
    }
}
