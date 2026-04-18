//
//  HomeView.swift
//  Vollmed
//
//  Created by Giovanna Moeller on 12/09/23.
//

import SwiftUI

struct HomeView: View {
    @State private var specialists: [Specialist] = []
    
    private let webService = WebService()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image(.logo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .padding(.vertical, 32)
                Text("Boas-vindas!")
                    .font(.title2)
                    .bold()
                    .foregroundColor(Color(.lightBlue))
                Text("Veja abaixo os especialistas da Vollmed disponíveis e marque já a sua consulta!")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 16)
                ForEach(specialists) { specialist in
                    SpecialistCardView(specialist: specialist)
                        .padding(.bottom, 8)
                }
            }
            .padding(.horizontal)
            .task {
                await getSpecialists()
            }
        }
        .padding(.top)
    }
    
    // MARK: - Methods
    func getSpecialists() async {
        do {
            let specialists = try await webService.getAllSpecialists()
            self.specialists = specialists
            print(specialists)
        } catch URLError.Code.badURL {
            print("URL Inválida")
        } catch URLError.Code.badServerResponse {
            print("Erro no servidor")
        } catch {
            print("Erro inesperado: \(error.localizedDescription)")
        }
    }
}

#Preview {
    HomeView()
}
