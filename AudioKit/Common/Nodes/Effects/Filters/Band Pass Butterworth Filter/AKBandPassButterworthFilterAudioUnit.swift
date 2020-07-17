// Copyright AudioKit. All Rights Reserved. Revision History at http://github.com/AudioKit/AudioKit/

public class AKBandPassButterworthFilterAudioUnit: AKAudioUnitBase {

    let centerFrequency = AUParameter(
        identifier: "centerFrequency",
        name: "Center Frequency (Hz)",
        address: AKBandPassButterworthFilterParameter.centerFrequency.rawValue,
        range: 12.0 ... 20_000.0,
        unit: .hertz,
        flags: .default)

    let bandwidth = AUParameter(
        identifier: "bandwidth",
        name: "Bandwidth (Hz)",
        address: AKBandPassButterworthFilterParameter.bandwidth.rawValue,
        range: 0.0 ... 20_000.0,
        unit: .hertz,
        flags: .default)

    public override func createDSP() -> AKDSPRef {
        return createBandPassButterworthFilterDSP()
    }
}
