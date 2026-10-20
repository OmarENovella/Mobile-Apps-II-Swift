//
//  DepartmentMainView.swift
//  MyApp
//
//  Created by win603 on 09/10/26.
//

import SwiftUI

struct DepartmentMainView: View {
    @State var departments: [Department] = [
        Department(location: "La Obrera, Tamps.", image: "depa1", cost: "$2,500"),
        Department(location: "Lomas de Miralta, Tamps.", image: "depa2", cost: "$3,800"),
        Department(location: "Velamar, Tamps.", image: "depa3", cost: "$2,100"),
        Department(location: "Santiago, NL.", image: "depa4", cost: "$2,400"),
        Department(location: "Guadalajara, Jal.", image: "depa5", cost: "$1,800"),
    ]
    @State var reservedDepartment: UUID? = nil
    @State var showAlert: Bool = false
    @State var alertMessage: String = ""
    
    var allFav: Bool {
        for dpt in departments {
            if !dpt.favorite {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 15) {
                    if allFav {
                        GroupBox {
                            HStack {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.green)
                                Text("Todos han sido marcados")
                                    .bold()
                                    .foregroundColor(.green)
                            }
                        }
                    }
 
                    Toggle("Marcar todos como favoritos", isOn: Binding(
                        get: {
                            allFav
                        },
                        set: { newValue in
                            for i in 0..<departments.count {
                                departments[i].favorite = newValue
                            }
                        }
                    ))
                    .padding()
                    .background(Color.orange.opacity(0.15))
                    .cornerRadius(12)
 
                    ForEach(departments.indices, id: \.self) { index in
                        
                        DepartmentView(
                            department: $departments[index],
                            reservation: $reservedDepartment,
                            alertMessage: $alertMessage,
                            showMessage: $showAlert
                        )
                        
                    }
                }
                .padding()
            }
            .navigationTitle("Departamentos")
            .background(Color.gray.opacity(0.1).ignoresSafeArea())
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Notificación"),
                message: Text(alertMessage),
                dismissButton: .default(Text("Aceptar"))
            )
        }
    }
}

#Preview {
    DepartmentMainView()
}
