//
//  ViewController.swift
//  video_player
//
//  Created by Juan Romero on 08/10/22.
//

//LIBRERIAS PARA REPRODUCCIÓN DE VIDEO
import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        ReproducirVideo()
    }
    
    private func ReproducirVideo () {
        
        guard let
                path=Bundle.main.path(forResource:
                        "y2mate.com - Gangstas Paradise_v720P", ofType:"mp4") else {
               debugPrint("Video no encontrado")
                return
        }
        
        //CONTROLADOR PARA QUE USUARIO INTERACTUE CON PAUSAR, REPRODUCIR, AVANZAR
        let player = AVPlayer(url:
                                URL(fileURLWithPath:path))
        let playercontroller =
            AVPlayerViewController()
        playercontroller.player = player
        present(playercontroller, animated: true) {
            player.play()
        }
    }
}

