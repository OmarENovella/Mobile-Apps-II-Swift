//
//  DepartmentView.swift
//  MyApp
//
//  Created by win603 on 09/10/26.
//

import SwiftUI

struct DepartmentView: View {
    @Binding var department: Department
    @Binding var reservation: UUID?
    @Binding var alertMessage: String
    @Binding var showMessage: Bool
    var body: some View {
        HStack(spacing: 12){
            Image(department.image)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 6){
                Text(department.location)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.gray)
                Button(action: {
                    if reservation == department.id{
                        reservation = nil
                    } else {
                        reservation = department.id
                    }
                }){
                    Text(reservation == department.id ? "Reservado": "Reservar")
                        .font(.caption)
                        .bold()
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(reservation == department.id ?  Color.green: Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                }
            }
            
            Spacer()
            
            Button(action: {
                department.favorite.toggle()
                if department.favorite {
                    alertMessage = "Departamento \(department.location) se agrego a favoritos."
                } else {
                    alertMessage = "Departamento \(department.location) se elimino de favoritos."
                }
                showMessage = true
            }){
                Image(systemName: department.favorite ? "heart.fill": "heart")
                    .font(.title2)
                    .foregroundColor(department.favorite ? .red : .gray)
            }
            .buttonStyle(.plain)
        }
        
    }
}
