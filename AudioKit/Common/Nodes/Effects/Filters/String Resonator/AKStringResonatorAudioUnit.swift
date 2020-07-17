// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

public class AKStringResonatorAudioUnit: AKAudioUnitBase {

    let fundamentalFrequency = AUParameter(
        identifier: "fundamentalFrequency",
        name: "Fundamental Frequency (Hz)",
        address: AKStringResonatorParameter.fundamentalFrequency.rawValue,
        range: 12.0 ... 10_000.0,
        unit: .hertz,
        flags: .default)

    let feedback = AUParameter(
        identifier: "feedback",
        name: "Feedback (%)",
        address: AKStringResonatorParameter.feedback.rawValue,
        range: 0.0 ... 1.0,
        unit: .generic,
        flags: .default)

    public override func createDSP() -> AKDSPRef {
        return createStringResonatorDSP()
    }
}
